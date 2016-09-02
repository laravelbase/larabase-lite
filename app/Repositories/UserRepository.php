<?php
namespace App\Repositories;

use App\Events\UserFirstLogin;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Container\Container as Application;

class UserRepository extends BaseRepository{

    public function __construct(Application $app,PostRepository $postRepository)
    {
        parent::__construct($app);
        $this->postRepository = $postRepository;
    }

    public function model(){
        return User::class;
    }

    public function getFavoritePosts($perPage){


        $likes = Auth::user()->favoritePosts($perPage);

        $likes->each(function($l){
            $data = Carbon::createFromFormat('Y-m-d H:i:s',$l->like_created_at);
            $l->like_created_at =  $data->diffForHumans();
        });

        return $likes;
    }


    public function getComments($perPage){
        $comments = Auth::user()->comments()->paginate($perPage);

        $comments->map(function($c){
            $c->body = str_limit($c->body,120);
            $c->post_title = $c->post?$c->post->title:'';
            $c->post_url = $c->post?route('post',$c->post->id):'';
        });

        return $comments;
    }

    public function updateAuthUserAvatar($source, $path='upload/temp/'){
        $path = $this->saveImg($source,$path);
        $user = Auth::user();
        $user->avatar = '/'.$path;
        $user->save();
        return $path;
    }

    public function LoginOrCreateOAuthUser($oa_user,$source){

        if($user= User::where('oauth_id',$oa_user->id)->where('oauth_source',$source)->first()){
            Auth::login($user);
            flash('欢迎回来哟！','girl');
            return redirect('/');
        }else{

            $user = new User();
            $user->oauth_id = $oa_user->id;
            $user->oauth_source = $source;
            $user->avatar = $oa_user->avatar;
            $user->name = $oa_user->nickname;
            $user->email = $oa_user->id;
            $user->verified = 1;
            $user->save();
            $user->assignRole('user');

            Auth::login($user);
            event(new UserFirstLogin($user));
            flash('主人，人家等你好久了！','girl');
            return redirect('/');
        }
    }
}