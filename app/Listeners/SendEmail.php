<?php

namespace App\Listeners;

use App\ForumHack\Events\UserCreatedThread;
use App\Models\User;
use App\Services\EmailService;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Riari\Forum\Frontend\Support\Forum;

class SendEmail
{

    public function __construct(EmailService $emailService)
    {
        $this->emailService=$emailService;
    }


    public function handle( $event)
    {
        //
    }

    public function emailAdminOnThreadCreated(UserCreatedThread $event){
        $admin = User::whereHas('roles',function($r){
            $r->where('name','admin');
        })->first();

        $view ='emails.newThread';
        $url= Forum::route('thread.show', $event->thread);
        $data=['title'=>$event->thread->title,'url'=>$url,'poster'=>$event->thread->author->name];
        $to_email =$admin->email;
        $to_name = $admin->name;
        $subject = $event->thread->author->name.'在论坛发了一个帖子';
        $this->emailService->sendEmail($view,$data,$to_email,$to_name,$subject);
    }
}
