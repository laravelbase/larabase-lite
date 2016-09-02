<?php

namespace App\Listeners;

use App\Events\ArticleCommented;
use App\Events\CommentReplied;
use App\Events\UserFirstLogin;
use App\ForumHack\Events\UserCreatedPost;
use App\ForumHack\Events\UserCreatedThread;
use App\Models\User;
use App\Repositories\PostRepository;
use App\Services\NotificationService;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Riari\Forum\Frontend\Support\Forum;

class SendNotification
{

    public function __construct(NotificationService $notificationService,PostRepository $postRepository)
    {
        $this->notificationService =$notificationService;
        $this->postRepository= $postRepository;
    }

    /**
     * Handle the event.
     *
     * @param  UserCreatedPost  $event
     * @return void
     */
    public function handle(UserCreatedPost $event)
    {

    }

    public function notifyThreadOwner(UserCreatedPost $event){
        $this->notificationService->sendNotification('notifyThreadOwner',$event->creator->id,$event->thread->author->id,Forum::route('thread.show', $event->thread));
    }

    public function notifyAdminOnThreadCreated(UserCreatedThread $event){
        $admin = User::whereHas('roles',function($r){
            $r->where('name','admin');
        })->first();

        $this->notificationService->sendNotification('notifyAdminOnThreadCreated',$event->thread->author->id,$admin->id,Forum::route('thread.show', $event->thread));
    }

    public function notifyOwnerOnArticleCommented(ArticleCommented $event){
        $url = $this->postRepository->renderPostUrl($event->post);

        $title = $event->post->title;

        $this->notificationService->sendNotification('notifyOwnerOnArticleCommented',$event->comment_author->id,$event->post->user->id,$url,compact('title'));
    }

    public function notifyOwnerOnCommentReplied(CommentReplied $event){

        if($event->reply->user->id != $event->parent_comment->user->id){
            $url = $this->postRepository->renderPostUrl($event->post);
            $body = $event->parent_comment->body;
            $this->notificationService->sendNotification('notifyOwnerOnCommentReplied',$event->reply->user->id,$event->parent_comment->user->id, $url,compact('body'));
        }
    }

    public function notifyOauthOnlyUser(UserFirstLogin $event){
       
        if($event->user->oauth_id){
            $admin = User::whereHas('roles',function($r){
                $r->where('name','admin');
            })->first();
            $url = route('show.ucenter.account.complete');
            $this->notificationService->sendNotification('notifyOauthOnlyUser',$admin->id,$event->user->id,$url,compact('title'));
        }

    }

}
