@extends('front.layouts.app')

@section('custom_css')

@endsection


@section('content')
    <main class="mdl-layout__content">
        <div class="mdl-layout__tab-panel is-active">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--2-col">
                    <ul class="demo-list-item mdl-list">
                        <li class="mdl-list__item {{\Route::getCurrentRoute()->getPath() == '/'?'active':''}}">
    <span clapa="mdl-list__item-primary-content">
        <a href="/"><span>最新</span></a>
    </span>

                        </li>
                        @forelse($categories as $item)
                        <li class="mdl-list__item {{isset($category_name) && $item->name == $category_name?'active':''}}">
                            <a href="{{route('posts.filter.category',$item->id)}}">
    <span clapa="mdl-list__item-primary-content">
        {{$item->name}}
    </span>
                            </a>
                        </li>
                        @empty

                     @endforelse
                    </ul>
                    <ul class="mdl-list">
                        <li>
                            <a href="http://laravel.com/" class="brand" target="_blank">
                                <span class="helper"></span>
                                <img src="/assets/images/laravel-logo.png" alt="">
                            </a>

                        </li>
                        <li>

                            <a href="https://laracasts.com/" class="brand" style="background-color: #1bb1b2" target="_blank">
                                <span class="helper"></span>
                                <span>Laracasts</span>
                            </a>

                        </li>
                        <li>
                            <a href="http://vuejs.org/" class="brand" target="_blank">
                                <span class="helper"></span>
                                <img src="/assets/images/vuejs-logo.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="http://redis.io/" class="brand" style="background-color: #000" target="_blank">
                                <span class="helper"></span>
                                <img src="/assets/images/redis-white.png" alt="" style="width: 70%">
                            </a>
                        </li>
                        <li>
                            <a href="https://nodejs.org/zh-cn/" class="brand" style="background-color: #000" target="_blank">
                                <span class="helper"></span>
                                <img src="/assets/images/nodejs-new-white-pantone.png" alt="" style="width: 50%">
                            </a>
                        </li>
                        <li>
                            <a href="http://socket.io/" class="brand" target="_blank">
                                <span class="helper"></span>
                                <img src="/assets/images/logo.svg" alt=""  style="width: 80%">
                            </a>
                        </li>
                        <li>
                            <a href="https://laragon.org/" class="brand" target="_blank">
                                <span class="helper"></span>
                                <img src="/assets/images/laragon.png" alt=""  style="width: 80%">
                            </a>
                        </li>

                    </ul>


                </div>
                <div class="mdl-cell mdl-cell--7-col">
                    <h4 style="padding: 0 0;margin-top: 0">搜索结果:{{$query}}({{$posts->total()}})</h4>
                    <hr>
                    @forelse($posts as $post)
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
                        <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">

                            <a href="{{route('post',$post->id)}}">
                            <img src="{{$post->feature_img}}"
                                 alt="" width="180">
                            </a>
                        </header>
                        <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone" style="position: relative;overflow: visible">
                            <div class="date-block">
                                {{$post->created_at->diffForHumans()}}
                            </div>
                            <div class="type">
                                {{$post->Genre}}
                            </div>
                            <div class="mdl-card__supporting-text">
                                <h4><a href="{{route('post',$post->id)}}">{{$post->title}}</a></h4>
                                {{str_limit($post->body,160)}}
                            </div>
                            <div class="mdl-card__actions mdl-card--border">
                                <ul class="list-inline category">
                                    <li><i class="material-icons" style="padding-top:6px">folder_open</i></li>
                                    <li>
                                        <button class="mdl-button mdl-js-button mdl-js-ripple-effect">
                                          {{$post->categories->first()?$post->categories->first()->name:''}}
                                        </button>
                                    </li>
                                </ul>

                                <ul class="list-inline meta">
                                    <li><i class="material-icons" style="padding-top:6px">visibility</i></li>
                                    <li>{{$post->clicks}}</li>
                                    <li><i class="material-icons" style="padding-top:6px">comment</i></li>
                                    <li>{{$post->comments}}</li>
                                    <li><i class="material-icons" style="padding-top:6px">favorite</i></li>
                                    <li>{{$post->likes}}</li>
                                </ul>


                            </div>
                        </div>
                        {{--<button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="btn{{$post->id}}">
                            <i class="material-icons">more_vert</i>
                        </button>
                        <ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right" for="btn{{$post->id}}">
                            <li class="mdl-menu__item">收藏</li>
                            <li class="mdl-menu__item">转发</li>
                        </ul>--}}
                    </section>
                        @empty
                        <h2>什么也没搜到!</h2>
                    @endforelse
                    @inject('request', '\Illuminate\Http\Request')
                    {!! $posts->appends($request->only('query'))->links() !!}
                </div>
                <div class="mdl-cell mdl-cell--3-col">
                    <a href="http://hdinnotech.com/" target="_blank">
                    <div class=" mdl-card mdl-shadow--2dp hdit">

                        <img src="http://laravelbase.com/uploads/media/2/hdit.png">
                        <button class="mdl-button mdl-js-button mdl-js-ripple-effect">
                            Start A Project
                        </button>


                    </div>
                    </a>
                    <div class="mdl-card m-t-15 mdl-shadow--2dp">
                        <div class="mdl-tabs mdl-js-tabs">

                            <div class="mdl-tabs__tab-bar">
                                <a href="#tab1" class="mdl-tabs__tab is-active">阅读最多</a>
                                <a href="#tab2" class="mdl-tabs__tab">评论最多</a>
                                <a href="#tab3" class="mdl-tabs__tab">收藏最多</a>
                            </div>

                            <div class="mdl-tabs__panel is-active" id="tab1">
                                <ul class="news-list">
                                    @forelse($posts_most_read as $item)
                                    <li class="list-item">
                                        <span class="count">{{$item->clicks}}</span>
                                        <div class="content"><a href="{{route('post',$item->id)}}">{{$item->title}}</a></div>
                                    </li>
                                    @empty
                                        <li class="list-item">
                                            <span>木有文章</span>
                                        </li>
                                    @endforelse
                                </ul>
                            </div>
                            <div class="mdl-tabs__panel" id="tab2">
                                <ul class="news-list">
                                    @forelse($posts_most_commented as $item)
                                        <li class="list-item">
                                            <span class="count">{{$item->comments}}</span>
                                            <div class="content"><a href="{{route('post',$item->id)}}">{{$item->title}}</a></div>
                                        </li>
                                    @empty
                                        <li class="list-item">
                                            <span>木有文章</span>
                                        </li>
                                    @endforelse
                                </ul>
                            </div>
                            <div class="mdl-tabs__panel" id="tab3">
                                <ul class="news-list">
                                    @forelse($posts_most_liked as $item)
                                        <li class="list-item">
                                            <span class="count">{{$item->likes}}</span>
                                            <div class="content"><a href="{{route('post',$item->id)}}">{{$item->title}}</a></div>
                                        </li>
                                    @empty
                                        <li class="list-item">
                                            <span>木有文章</span>
                                        </li>
                                    @endforelse
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


        </div>


    </main>

    <section class="section--footer mdl-color--white " style="padding: 0 0 60px 0">

        <div class="container">
            <div class="info">
                <h1>专辑</h1><span>就是把很多文章放在一起，形成一个系列。</span>
            </div>
            <div class="collections">
                <!-- Normal Demo-->
                <div class="column" style="padding-left: 0">
                    <!-- Post-->
                    <div class="post-module">
                        <!-- Thumbnail-->
                        <div class="thumbnail">
                            <div class="date">
                                {{--  <div class="day">27</div>
                                  <div class="month">Mar</div>--}}
                                <i class="icon md-star" aria-hidden="true" style="font-size: 40px;padding-top: 4px"></i>
                            </div>
                            <img src="/upload/collections/laravel.png"/>
                        </div>
                        <!-- Post Content-->
                        <div class="post-content">
                            <a href="{{route('collection.post',['col_id'=>1,'post_id'=>33])}}">
                                <div class="category">Laravel</div>
                                <h1 class="title">Laravel 5.1 文档攻略</h1>
                                <h2 class="sub_title">学习Laravel最快的方法</h2>
                                <p class="description">打游戏有攻略,学Laravel也是一样, 何必要跳坑呢?</p>
                            </a>
                            {{-- <div class="post-meta"><span class="timestamp"><i class="icon md-mood" aria-hidden="true"></i> By Woody</span><span class="comments"> <i class="icon md-calendar-note" aria-hidden="true"> </i><a href="#"> 2016-8-10</a></span></div>--}}
                        </div>
                    </div>
                </div>
                <!-- Normal Demo-->
                <div class="column">
                    <!-- Post-->
                    <div class="post-module">
                        <!-- Thumbnail-->
                        <div class="thumbnail">
                            <div class="date">
                                {{-- <div class="day">27</div>
                                 <div class="month">Mar</div>--}}
                                <i class="icon md-star" aria-hidden="true" style="font-size: 40px;padding-top: 4px"></i>
                            </div><img src="/upload/collections/vuejs-logo.jpg"/>
                        </div>
                        <!-- Post Content-->
                        <div class="post-content">
                            <a href="{{route('collection.post',['col_id'=>1,'post_id'=>1])}}">
                                <div class="category">VueJs</div>
                                <h1 class="title">VueJs 1 文档攻略</h1>
                                <h2 class="sub_title">Laravel官方御用JS库</h2>
                                <p class="description">迄今为止对Phper最有亲合力的前端库, 想要开发酷炫屌炸天的应用,赶快拥抱VueJs.</p>
                            </a>
                            {{--<div class="post-meta"><span class="timestamp"><i class="icon md-mood" aria-hidden="true"></i> By Woody</span><span class="comments"> <i class="icon md-calendar-note" aria-hidden="true"> </i><a href="#"> 2016-8-10</a></span></div>
                        </div>--}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



@endsection

@section('custom_js')


@endsection
