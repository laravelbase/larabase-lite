@extends('front.layouts.app')

@section('custom_css')
<style>
    i.icon{
        font-size: 25px;
        padding-top:10px;
    }
</style>
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



                </div>
                <div class="mdl-cell mdl-cell--7-col">
                    @forelse($posts as $post)
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
                        <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
                            <a href="{{route('post',$post->id)}}">


                                <img src="{{$post->feature_img}}" alt="{{$post->title}}">



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
                                <h4><a href="{{$post->renderPostUrl()}}">{{$post->title}}</a></h4>

                                {{str_limit($post->getSummery(),160)}}
                            </div>
                            <div class="mdl-card__actions mdl-card--border">
                                <ul class="list-inline category">
                                    <li><i class="icon md-folder-outline" aria-hidden="true" style="padding-top: 5px"></i></li>
                                    <li>
                                        <button class="mdl-button mdl-js-button mdl-js-ripple-effect">
                                          {{$post->categories->first()->name}}
                                        </button>
                                    </li>
                                </ul>

                                <ul class="list-inline meta">
                                    <li><i class="icon md-eye" aria-hidden="true"></i></li>
                                    <li>{{$post->clicks}}</li>
                                    <li><i class="icon md-comment-text-alt" aria-hidden="true"></i></li>
                                    <li>{{$post->comments}}</li>
                                    <li><i class="icon md-favorite" aria-hidden="true"></i></li>
                                    <li>{{$post->likes}}</li>
                                </ul>


                            </div>
                        </div>
                        {{--<button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="btn{{$post->id}}">
                            <i class="icon md-more-vert" aria-hidden="true" style="padding-top: 3px"></i>
                        </button>
                        <ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right" for="btn{{$post->id}}">
                            <li class="mdl-menu__item">收藏</li>
                            <li class="mdl-menu__item">转发</li>
                        </ul>--}}
                    </section>
                        @empty
                    @endforelse
                    {!! $posts->links() !!}
                </div>
                <div class="mdl-cell mdl-cell--3-col">

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


    </section>

    {{--<button href="test"
       id="view-source"
       class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--accent mdl-color-text--accent-contrast">View
        Source</button>--}}

@endsection

@section('custom_js')
    <script>
        $(".hover").mouseleave(
                function () {
                    $(this).removeClass("hover");
                }
        );
    </script>

@endsection
