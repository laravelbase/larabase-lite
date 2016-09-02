<?php
namespace App\Repositories;


use App\Models\Comment;
use App\Models\Like;
use App\Models\Post;
use Illuminate\Support\Facades\Auth;

class CommentRepository extends BaseRepository implements CommentRepositoryInterface{

    public function model(){
        return Comment::class;
    }

    public function getCommentWithUser($comment){
        $comment->user = $comment->user;
        return $comment;
    }

    public function getCommentChildren($id){
         $children = $this->model->where('parent_id',$id)->orderBy('created_at','desc')->get();

        $children->each(function($c){
            $c->user = $c->user()->first();
        });

        return $children;
    }

    public function getCommentChildrenCount($id){

       $count =  $this->model->where('parent_id',$id)->count();
        return $count?$count:0;
    }

    public function toggleCommentLike($comment_id){
        $auth_user = Auth::user();
        if($this->isLiked($comment_id)){
            Like::where('user_id',$auth_user->id)->where('likeable_id',$comment_id)->where('likeable_type','App\Models\Comment')->first()->delete();
            return -1;
        }else{
            $comment = $this->find($comment_id);
            $like = new Like();

            $like->user()->associate($auth_user);
            $like->save();
            $comment->likes()->save($like);
            return 1;
        }
    }

    public function isLiked($comment_id){

        if(!Auth::check()){
            return false;
        }
        $auth_user = Auth::user();
        if(Like::where('user_id',$auth_user->id)->where('likeable_id',$comment_id)->where('likeable_type','App\Models\Comment')->count()>0){
            return true;
        }else{
            return false;
        }
    }

    public function create($data){

        if($data['parent_id'] && !$this->model->find($data['parent_id'])){
            return false;
        }
        return $this->model->create($data);
    }

    public function deleteComments($ids){

        foreach($ids as $id){
            $post = $this->model->findOrfail($id)->post;
            $post->comments--;
            $post->save();
            $this->delete($id);
        }
    }

}