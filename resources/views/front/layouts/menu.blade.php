<header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">

    <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        <h4>Lara<strong>Base</strong><span class="title_comment"> // Code Sexily</span></h4>
        <!-- Add spacer, to align navigation to the right -->
        <div class="mdl-layout-spacer"></div>
        <!-- Navigation -->
        <nav class="mdl-navigation">

            @if(Auth::check())
                <div class="container" id="badge">
                    <a class="entypo-bell"></a>
                </div>
            <span class="avatar-name">{{Auth::user()->name}}</span>
            <!-- Right aligned menu below button -->
            <div class="avatar-area">
            <div id="avatar-wrap"
                   class="avatar-img" style="width: 40px;height: 40px;position: relative">

                @if($unread_notification && $unread_notification->count()>0)
                <div class="avatar-badge">{{$unread_notification->count()}}</div>
                @endif

                <img src="{{Auth::user()->avatar}}" class="avatar" style="margin-right: 0;border: 2px solid #303F9F;">
            </div>

            <div class="avatar-drop-menu-wrap" id="avatar-drop-menu-wrap">
            <ul class="avatar-drop-menu"
                 id="avatar-drop-menu">
                @if($auth_user->hasRole('admin'))
                <li class="mdl-menu__item opacity-1"><a href="{{route('list.posts')}}" style="color:#7C4DFF" target="_blank"><i class="icon md-n-1-square" aria-hidden="true" style="padding-top: 0"></i>管理后台</a></li>
                @endif
                <li class="mdl-menu__item opacity-1"><a href="{{route('ucenter.notifications')}}"><i class="icon md-email" aria-hidden="true" style="padding-top: 0"></i>消息
                        @if($unread_notification && $unread_notification->count()>0)
                            &nbsp;&nbsp;&nbsp;&nbsp; <small style="color:#ff2c2c">{{$unread_notification->count()}}条未读</small>
                        @endif
                    </a></li>
                <li class="mdl-menu__item opacity-1"><a href="{{route('ucenter')}}"><i class="icon md-account-circle" aria-hidden="true" style="padding-top: 0"></i>个人中心</a></li>
                <li class="mdl-menu__item opacity-1"><a href="{{url('/logout')}}"><i class="icon md-run" aria-hidden="true" style="padding-top: 0"></i> 退出</a></li>
            </ul>
            </div>
            </div>
            @else
                <span class="mdl-navigation__link open-login">登录</span>
                <span class="mdl-navigation__link open-register">注册</span>
            @endif

        </nav>
    </div>

    <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">

        @forelse($navs as $item)
            <a href="{{$item->link}}" class="mdl-layout__tab {{$item->badge?'menu-badge':''}}">{{$item->name}}

                @if($item->badge)
                    <span class="badge-content">{{$item->badge}}</span>
                @endif
            </a>

        @empty

        @endforelse
            <form action="{{route('search')}}" method="get">
        <div class="search-box"><i class="icon md-search" aria-hidden="true" style="padding-top: 3px"></i><input type="search" name="query" class="search" placeholder="搜点啥"></div>
            </form>

    </div>
</header>
