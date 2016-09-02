<?php

namespace App\Http\Controllers;

use App\Events\UserCompleteAccountPassed;
use App\Events\UserRegisterValidationPassed;
use App\Http\Requests;
use App\Models\Post;
use App\Models\User;
use App\Repositories\CategoryRepository;
use App\Repositories\MenuRepository;
use App\Repositories\PostRepository;
use App\Repositories\UserRepository;
use Fenos\Notifynder\Facades\Notifynder;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Auth;
use Riari\Forum\Frontend\Support\Forum;
use Riari\Forum\Models\Thread;
use Riari\Forum\Models\Post as ForumPost;

class HomeController extends Controller
{

    public function __construct(
        PostRepository $postRepository,
        CategoryRepository $categoryRepository,
        MenuRepository $menuRepository,
        UserRepository $userRepository
    )
    {
        //$this->middleware('auth');
        $this->postRepository = $postRepository;
        $this->categoryRepository = $categoryRepository;
        $this->menuRepository = $menuRepository;
        $this->userRepository = $userRepository;
    }


    public function index()
    {
        //获取文章列表
        $posts = $this->postRepository->with(['categories'])->filterBy('type','article')->filterBy('status','已发布')->paginateWithOrder(12,'desc');
        //复原一下postRepository的Model;
        $this->postRepository->makeModel();
        //获取分类
        $categories = $this->categoryRepository->getPostCategories();
        //获取阅读最多
        $posts_most_read = $this->postRepository->getMostRead(6);
        //获取评论最多
        $posts_most_commented = $this->postRepository->getMostCommented(6);
        //获取收藏最多
        $posts_most_liked = $this->postRepository->getMostLiked(6);


        return view('front.index',compact('posts','categories','posts_most_read','posts_most_commented','posts_most_liked'));
    }

    public function postsFilterByCategory($id){
        $posts = $this->postRepository->with(['categories'])->filterBy('type','article')->filterByCategory($id)->paginateWithOrder(12,'desc');

        //用于标注菜单激活状态
        $category_name =$this->categoryRepository->findOrFail($id)->name;
        //获取分类
        $categories = $this->categoryRepository->getPostCategories();
        //获取阅读最多
        $posts_most_read = $this->postRepository->getMostRead(6);
        //获取评论最多
        $posts_most_commented = $this->postRepository->getMostCommented(6);
        //获取收藏最多
        $posts_most_liked = $this->postRepository->getMostLiked(6);

        return view('front.index',compact('posts','categories','posts_most_read','posts_most_commented','posts_most_liked','category_name'));

    }

    public function showUCenter(){
        $user = Auth::user();
        $fav_count = $user->favoriteCount();
        $comments_count = $user->comments()->count();
        $notificatios_count = $user->getNotifications()->count();
        return view('front.ucenter',compact('fav_count','comments_count','notificatios_count'));
    }

    public function listUCenterNotifications(Request $request){

        $user = Auth::user();

        $notifications = $user->getNotifications(15,true,'desc');

        $notifications->map(function($n){
                $n->user = $this->userRepository->find($n->from_id);
                if(!$n->user){
                    $n->user =$this->userRepository->filterBy('email','user1@qq.com')->first();
                }
        });

        $unread_notifications = $user->getNotificationsNotRead();

        if($unread_notifications->count()>0){
            Notifynder::readAll($user->id);
        }

        return view('front.ucenter_notification',compact('notifications','unread_notifications'));
    }

    public function listUCenterFavorites(){
        //实际上是取了likes，合表了posts
        $posts =  $this->userRepository->getFavoritePosts(2);
        return view('front.ucenter_favorites',compact('posts'));
    }

    public function listUCenterComments(){
        $comments = $this->userRepository->getComments(15);
        return view('front.ucenter_comments',compact('comments'));
    }

    public function listUCenterForumThreads(){
        $threads = Thread::where('author_id',Auth::user()->id)->paginate(15);

        $threads->map(function($t){
            $t->url = Forum::route('thread.show', $t);
            $t->category_name = $t->category->title;
            $t->category_url = Forum::route('category.show', $t->category);
            $t->posts_count =$t->posts()->count();
        });

        return view('front.ucenter_threads',compact('threads'));
    }



    public function updateProfile(Request $request){

        $this->userRepository->update(Auth::user()->id,$request->except('_token','_url'));

        flash('档案更新成功！','success');
        return redirect()->back();
    }

    public function showUcenterPassword(){
        return view('front.ucenter_password');
    }

    public function updateUcenterPassword(Request $request){
        $this->validate($request, [
            'old_psw' => 'required',
            'new_psw' => 'required|min:6|confirmed'
        ]);
        $user = Auth::user();
        if (Auth::attempt(['email' =>$user->email, 'password' => $request->get('old_psw')])) {
            $user->password = bcrypt($request->get('old_psw'));
            $user->save();
            flash('密码更新成功！','success');
            return redirect()->back();
        }else{
            flash('密码错误！你到底是谁？！','danger');
            return redirect()->back();
        }

    }

    public function updateUcenterAvatar(Request $request){
        $this->userRepository->updateAuthUserAvatar($request->avatar,'upload/avatars/');
        flash('头像更新成功！','success');
        return redirect()->back();
    }

    public function showAccountComplete(){
        return view('front.ucenter_complete_account');
    }

    public function completeAccount(Request $request){
        $this->validate($request, [
            'email' => 'required',
            'password' => 'required|min:6|confirmed'
        ]);

        event(new UserCompleteAccountPassed($request));
        return view('auth.emailsent',compact('request'));
    }

    public function postSearch(Request $request){
        $query = $request->get('query');
        $current_page = $request->get('page');
        $posts = $this->postRepository->with(['categories'])->filterBy('type','article')->search($query);
        $posts =$this->postRepository->paginateCollection($posts,12,$current_page);

        //获取分类
        $categories = $this->categoryRepository->getPostCategories();
        //获取阅读最多
        $posts_most_read = $this->postRepository->getMostRead(6);
        //获取评论最多
        $posts_most_commented = $this->postRepository->getMostCommented(6);
        //获取收藏最多
        $posts_most_liked = $this->postRepository->getMostLiked(6);

        return view('front.search_results',compact('posts','categories','posts_most_read','posts_most_commented','posts_most_liked','query'));
    }

}
