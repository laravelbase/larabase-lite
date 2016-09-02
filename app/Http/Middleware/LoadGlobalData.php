<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use App\Repositories\MenuRepository;

class LoadGlobalData
{

    public function __construct(
        MenuRepository $menuRepository
    )
    {
        $this->menuRepository = $menuRepository;
    }
    /**
     * handle
     * @param $request
     * @param Closure $next
     * @param CategoryRepository $categoryRepository
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //共享全局Auth用户
        view()->share('auth_user',Auth::user());

        //共享全局视图菜单栏数据
        $navs = $this->menuRepository->getMenu('首页主导航');
        if(Auth::check()){
            $unread_notification = Auth::user()->getNotificationsNotRead();
        }else{
            $unread_notification = '';
        }
        view()->composer('front.layouts.menu', function ($view)use($navs,$unread_notification) {
            $view->with('navs',$navs);
            //共享未读消息通知数据
            $view->with('unread_notification',$unread_notification);
        });

        view()->composer('front.layouts.ucenter_menu', function ($view)use($unread_notification) {
            //共享未读消息通知数据
            $view->with('unread_notification',$unread_notification);
        });

        return $next($request);
    }
}
