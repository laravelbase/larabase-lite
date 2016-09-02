<?php

namespace App\Models;


use Fenos\Notifynder\Notifable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Larabase\ACL\UserRoleTrait;


class User extends Authenticatable
{
    use SoftDeletes,UserRoleTrait,Notifable;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','gender','age','last_login','ip','avatar'
    ];
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function posts(){
        return $this->hasMany('App\Models\Post');
    }

    public function collections(){
        return $this->hasMany('App\Models\Collection');
    }

    public function comments(){
        return $this->hasMany('App\Models\Comment');
    }

    public function likes(){
        return $this->hasMany('App\Models\Like');
    }

    public function favoriteCount(){
        return $this->likes()->select('likes.created_at as like_created_at','posts.created_at as post_created_at','likes.*','posts.*')->join('posts', 'posts.id', '=', 'likes.likeable_id')->where('likeable_type','App\Models\Post')->orderBy('likes.created_at', 'desc')->count();
    }

    public function favoritePosts($perPage){
/*        $posts = Post::whereHas('likes',function($q){
            $q->whereHas('user',function($q_u){
                $q_u->where('id',$this->id);
            })->orderBy('created_at', 'desc');
        })->paginate($perPage);
        collect($posts->items())->map(function($p){
            $p->load(['likes'=>function($l)use($p){
                $like = $l->where('user_id',$this->id)->first();
                $p->likedDate = $like->created_at->diffForHumans();
            }]);
        });*/

        $likes = $this->likes()->select('likes.created_at as like_created_at','posts.created_at as post_created_at','likes.*','posts.*')->join('posts', 'posts.id', '=', 'likes.likeable_id')->where('likeable_type','App\Models\Post')->orderBy('likes.created_at', 'desc')->paginate($perPage);

        return $likes;
    }

    public function own($model_class,$id){
        $model = new $model_class;
        if($model->findOrFail($id)->user_id == $this->id || $model->findOrFail($id)->author_id == $this->id){
            return true;
        }else{
            return false;
        }
    }

    public function accountNotCompleted(){
        if(!$this->password){
            return true;
        }else{
            return false;
        }
    }
}
