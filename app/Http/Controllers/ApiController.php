<?php

namespace App\Http\Controllers;

use App\Events\ArticleCommented;
use App\Events\CommentReplied;
use App\Repositories\CommentRepository;
use App\Repositories\LikeRepository;
use App\Repositories\PostRepository;
use Fenos\Notifynder\Models\Notification;
use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\Auth;
use Riari\Forum\Models\Thread;
use Riari\Forum\Models\Post as ForumPost;
class ApiController extends Controller
{
    public function __construct(
        CommentRepository $commentRepository,
        PostRepository $postRepository,
        LikeRepository $likeRepository
    )
    {
        //$this->middleware('auth');
        $this->commentRepository = $commentRepository;
        $this->postRepository = $postRepository;
        $this->likeRepository = $likeRepository;

    }
    public function postComment(Request $request){
        //新建评论
        $data = $request->except('_token');
        //获取文章
        $post =$this->postRepository->find($request->get('post_id'));
        // 创建评论
        $comment = $this->commentRepository->create($data);
        //回复评论被删除的时候处理
        if(!$comment){
            return response('回复失败，该评论可能已被删除', 410);
        }
        //文章评论统计+1
        $post->comments += 1;
        $post->save();
        //文章收藏数为0
        $comment->isLiked = false;

        //评论带上用户数据
        $comment = $this->commentRepository->getCommentWithUser($comment);
        //初始子评论为0
        $comment->children_count =0;
        //初始点赞为0
        $comment->likes_count=0;
        //初始点赞用户为空
        $comment->liked_users = [];

        if($comment->hasParent()){
            event(new CommentReplied($post,$comment->getParent(),$comment));
        }else{
            event(new ArticleCommented($post,Auth::user(),$comment));
        }

        return $comment;
    }

    public function getCommentChildren($id){

        return $this->commentRepository->getCommentChildren($id);
    }

    public function toggleCommentLike($id){
        return $this->commentRepository->toggleCommentLike($id);
    }

    public function togglePostLike($id){
        return $this->postRepository->togglePostLike($id);
    }

    public function unlikePostLikes(Request $request){

        $this->likeRepository->unlikeLikes($request->get('ids'),'App\Models\Post');
        apiJsonExport(0,'解除收藏成功！');
    }

    public function deleteUCenterNotification($id){
        Notification::where('id',$id)->delete();
        apiJsonExport(0,'删除成功！');
    }

    public function deleteUCenterNotifications(Request $request){
        $ids = $request->get('ids');
        Notification::destroy($ids);
        apiJsonExport(0,'删除成功！');
    }

    public function deleteComment($id){
        $comment = $this->commentRepository->find($id);

        $count = $comment->getChildren()->count()+1;

        $post = $comment->post;
        $this->commentRepository->delete($id);
        $post->comments = $post->comments - $count;
        $post->save();
        apiJsonExport(0,'删除成功！');
    }

    public function deleteComments(Request $request){
        $this->commentRepository->deleteComments($request->get('ids'));
        apiJsonExport(0,'删除成功！');
    }


    public function changeAvatar(){
        $user = Auth::user();
        $num = rand(1,config('larabase.avatar_rand'));
        $avatar = '/upload/avatars/'.$num.'.jpg';
        $user->avatar = $avatar;
        $user->save();
        return $avatar;
    }
}
