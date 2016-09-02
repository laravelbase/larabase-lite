@extends('front.layouts.app')

@section('custom_css')
    <link rel="stylesheet" href="/assets/plugins/mdeditor/css/editormd.preview.min.css">
    <link rel="stylesheet" href="/assets/plugins/nice-validator/jquery.validator.css">
    <style>
        .editormd-html-preview, .editormd-preview-container {
            width: 95%;

        }
        textarea {
            padding: 8px 8px;
        }

        textarea:focus{
            border:none;
        }

        .n-yellow .n-top .msg-wrap {
            bottom: 73px !important;
            left: 42px !important;
        }
        ul{
            list-style: none;
        }

        /*! Color themes for Google Code Prettify | MIT License | github.com/jmblog/color-themes-for-google-code-prettify */
        .prettyprint{background:#2f3640;font-family:Menlo,Bitstream Vera Sans Mono,DejaVu Sans Mono,Monaco,Consolas,monospace;border:0!important}.pln{color:#e6e9ed}ol.linenums{margin-top:0;margin-bottom:0;color:#656d78}li.L0,li.L1,li.L2,li.L3,li.L4,li.L5,li.L6,li.L7,li.L8,li.L9{padding-left:1em;background-color:#2f3640;list-style-type:decimal}@media screen{.str{color:#ffce54}.kwd{color:#4fc1e9}.com{color:#656d78}.typ{color:#4fc1e9}.lit{color:#ac92ec}.pun{color:#e6e9ed}.opn{color:#e6e9ed}.clo{color:#e6e9ed}.tag{color:#ed5565}.atn{color:#a0d468}.atv{color:#ffce54}.dec{color:#ac92ec}.var{color:#e6e9ed}.fun{color:#e6e9ed}}

        pre.prettyprint {
            padding: 32px;
        }


    </style>
@endsection


@section('content')
    <main class="mdl-layout__content">


            <section class="mdl-grid ">
                <div class="mdl-cell mdl-cell--12-col">

                    </div>
                <div class="mdl-cell mdl-cell--2-col">
                    <ul class="demo-list-item mdl-list">
                        <li class="mdl-list__item {{\Route::getCurrentRoute()->getPath() == '/'?'active':''}}">
    <span clapa="mdl-list__item-primary-content">
        <a href="/"><span>最新</span></a>
    </span>

                        </li>
                        @forelse($categories as $item)
                            <li class="mdl-list__item">
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
                    <div class="demo-crumbs mdl-color-text--grey-500">
                        <a href="/">首页</a> &gt; <a href="{{route('posts.filter.category',$post->firstCategory->id)}}">{{$post->firstCategory->name}}</a> &gt;
                        {{$post->title}}
                    </div>
                    <h3>{{$post->title}}</h3>
                    <div class="post-meta ">
                        <div class="post-meta-cell"><i class="material-icons">date_range</i><span> {{$post->created_at->diffForHumans()}}</span></div>
                        <div class="post-meta-cell"><i class="material-icons">tag_faces</i><span> {{$post->user->name}}</span></div>
                        <div class="post-meta-cell"><i class="material-icons">remove_red_eye</i><span> {{$post->clicks}}</span></div>
                        <div class="post-meta-cell"><i class="material-icons">chat</i><span>@{{total_comments_count}}</span></div>
                    </div>

                    <div id="test-editormd-view" style="width: 94.5%" v-pre>
                          <textarea id="append-test" style="display:none;">
                                 {{$post->body}}
                        </textarea>
                    </div>

                    <div class="comments-view " id="vue" >
                        <div class="comment-box">
                            <h4>评论</h4>
                            @if(\Auth::check())
                            <div class="post-comment" v-on="click: openCommentInput" v-if="!showCommentInput">

                                <div class="avatar">
                                    <img src="{{$auth_user->avatar}}" alt="">
                                </div>
                                <div class="text-right">
                                    写点啥...
                                </div>

                            </div>
                                @else
                                <div class="post-comment">
                                    <div class="avatar">
                                        <img src="/upload/avatars/default.jpg" alt="">
                                    </div>
                                    <div class="text-right">
                                        你还没有登录，请点击 <a href="" id="comment_login">登录</a> 发表评论。
                                    </div>
                                </div>
                            @endif

                            @if(\Auth::check())
                            <div class="post-comment" v-if="showCommentInput">
                                <div class="avatar">
                                    <img src="{{$auth_user->avatar}}" alt="">
                                </div>
                                <div class="text-right"  v-on="click: openCommentInput " style="width: 80%;text-align: left">
                                    {{$auth_user->name}}
                                </div>
                                <div class="post-message">
                                    <form action="" v-on="submit:postComment($event)">
                                   <textarea rows="9" id="sendPost" v-model="comment" data-rule="required;" data-msg-required="不可以什么都不写！" v-on="focus: closeAllCommentsPanels($event)" data-validator-option='{stopOnError:false, timely:0, theme:"yellow_top"}'></textarea>
                                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect send">
                                        发送
                                    </button>
                                    </form>
                                </div>

                            </div>
                            @endif

                            <div class="post-comment" v-repeat="comment in comments | orderBy 'created_at' -1"  v-on="mouseenter: showActions = comment.id, mouseleave: showActions =0">
                                <div class="like-users"  v-if="comment.liked_users.length>0">
                                    <ul class="list-inline">
                                        <span></span>
                                        <li v-repeat="user in comment.liked_users">@{{ user.name }}<span v-if="comment.liked_users.length > $index+1">,</span></li>
                                        <li>觉得赞</li>
                                    </ul>
                                </div>
                                <div class="avatar">
                                    <img alt="" v-attr="src: comment.user.avatar">
                                </div>
                                <div class="user-meta">
                                    <p><strong>@{{ comment.user.name }}</strong></p>
                                    <p>@{{ comment.created_at }}</p>
                                </div>
                                <div class="actions" v-if="comment.user.id == auth_user.id && showActions == comment.id">
                                    <a href="" v-on="click: deleteComment($event,comment)">
                                    <i class="material-icons">delete_forever</i>
                                    </a>
                                </div>
                                <div class="post-message">

                                   <div class="comment-body comment">
                                       @{{ comment.body }}
                                   </div>
                                   <button class="comment-bottom" v-on="click: toggleCommentLike(comment)">
                                       <span>@{{ comment.likes_count }}</span>
                                       <i class="material-icons" style="padding-top:6px">@{{ comment.isLiked?'favorite':'favorite_border' }}</i>
                                   </button>

                                    <button class="comment-bottom pull-right" v-on="click:showReplyArea(comment)">
                                        <span>@{{ comment.children_count }}</span>
                                        <i class="material-icons" style="padding-top:6px">textsms</i>

                                    </button>

                                    <div class="comment-input" style="position: relative" v-if="showReplies && comment.id == current_comment_id ">

                                        <form action="" v-on="submit:postReply($event,comment)" data-validator-option='{stopOnError:false, timely:0, theme:"yellow_top"}'>
                                            <textarea name="comment"  cols="30" rows="5" v-model="reply" data-rule="required;" data-msg-required="不可以什么都不写！" id="replyPost" class="replyComment"></textarea>

                                        <button class="mdl-button mdl-js-button mdl-js-ripple-effect reply">
                                            回复
                                        </button>
                                        </form>
                                    </div>

                                    <div class="comment-body reply" v-if="showReplies && comment.id == current_comment_id && comment.children_count;" >
                                    <div class="loading"></div>
                                        <div  v-repeat="child in children[comment.id] | orderBy 'created_at' -1" v-attr="class: position | rightOrLeft child" v-on="mouseenter: showDelete = child.id, mouseleave: showDelete = 0">


                                            <div class="date">
                                                @{{child.created_at}}
                                            </div>
                                            <div class="user-meta">
                                                <img alt="" v-attr="src:child.user.avatar">
                                                <div class="meta">
                                                    @{{child.user.name}}

                                                </div>
                                                <a href="" v-if="child.user.id == auth_user.id && showDelete == child.id" v-on="click: deleteReply($event,child,comment,children[comment.id])">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </div>
                                            <p>@{{child.body}}</p>



                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>

                </div>
                <div class="mdl-cell mdl-cell--3-col " style="padding-top: 109px;">
                    <div class="like-button">
                        <button class="mdl-button mdl-js-button mdl-button--raised @{{  post_liked?'mdl-button--accent':'mdl-button--colored'}} mdl-js-ripple-effect" v-on="click: togglePostLike(post.id)">
                            <i class="material-icons" style="padding-top:6px">@{{ post_liked?'favorite':'favorite_border' }}</i> @{{ post_liked?'已收藏':'收藏本文' }}
                        </button>
                        <a class="mdl-button mdl-js-button mdl-button--raised" href="{{url()->previous()}}">
                            返回
                        </a>

                        @if(\Auth::check() && $auth_user->hasRole('admin'))
                            <a href="{{route('edit.post',$post->id)}}" target="_blank" class="mdl-button mdl-js-button mdl-button--raised">编辑</a>
                        @endif
                    </div>
                    <div class="markdown-body editormd-preview-container" style="padding-bottom: 0">
                        <h4>节点导航</h4>
                    </div>
                    <div class="markdown-body editormd-preview-container" id="custom-toc-container" style="padding-top: 10px">#custom-toc-container</div>

                    </div>

            </section>

{{--<pre>@{{ $data.comments |json  }}</pre>--}}
    </main>



@endsection

@section('custom_js')
    <script src="/assets/plugins/mdeditor/lib/marked.min.js"></script>
    <script src="/assets/plugins/mdeditor/lib/prettify.min.js"></script>
    <script src="/assets/plugins/mdeditor/lib/underscore.min.js"></script>
    <script src="/assets/plugins/mdeditor/editormd.min.js"></script>
    <script src="/assets/plugins/nice-validator/jquery.validator.min.js"></script>
    <script src="/assets/plugins/nice-validator/local/zh-CN.js"></script>
    <script src="/assets/plugins/vue/vue.min.js"></script>
    <script src="/assets/plugins/vue/vue-app-comment.js"></script>

    <script>

        var comments = {!! $comments !!};
        var post = {!! $post !!};
        var post_liked = Boolean({!! $post->isLiked?1:0 !!});
        var _token = '{{ csrf_token() }}';

        var user = {!!   \Auth::user()?\Auth::user():0 !!};

        var total_comments_count ={!! $post->comments !!};
        var snackbarContainer = document.querySelector('#demo-snackbar-example');

        $(function(){
            //https://github.com/chjj/marked/issues/534 有太多空格
            $('#append-test').html($('#append-test').html().trim());
            var testEditormdView;

                testEditormdView = editormd.markdownToHTML("test-editormd-view", {
                    htmlDecode: "style,script,iframe",  // you can filter tags decode
                    emoji: true,
                    taskList: true,
                    tocContainer    : "#custom-toc-container"
                });

            $('.markdown-toc-list').attr('class','toc');

            vm.$data.comments = comments;
            vm.$data.post = post;
            vm.$data.auth_user = user;
            vm.$data.post_liked = post_liked;
            vm.$data.total_comments_count = total_comments_count;

            $('#comment_login').on('click',function(event){
                event.preventDefault();
                $('.open-login').trigger('click');
            });
        });

    </script>

@endsection
