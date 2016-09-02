@extends('front.layouts.app')

@section('custom_css')
    <style>
        .demo-card-image.mdl-card {
            width: 200px;
            height: 200px;
            background: url({{$auth_user->avatar}}) center / cover;
            margin:0  auto 30px;

        }
        .demo-card-image > .mdl-card__actions {
            height: 42px;
            padding: 10px;
            background: rgba(0, 0, 0, 0.2);
        }
        .demo-card-image__filename {
            color: #fff;
            font-size: 14px;
            font-weight: 500;
        }
        .md-delete:hover{
            color:red;
            cursor: pointer;
        }
    </style>
@endsection


@section('content')
    @include('front.layouts.ucenter_top_bg',['title'=>['评论','Comments']])
    <main class="mdl-layout__content">

        <div class="mdl-grid m-t-20">
            <div class="mdl-cell mdl-cell--3-col">
                @include('front.layouts.ucenter_menu')
            </div>
            <div class="mdl-cell mdl-cell--9-col">
                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-d-10" v-if="checkedCommentIds.length >0" v-on:click="deleteComments">
                    删除
                </button>
                <table class="mdl-data-table  mdl-shadow--2dp" style="width: 100%">
                    <thead>
                    <tr>
                        <th><input type="checkbox" v-on:change="toggleSelect" v-model="selectAll"></th>
                        <th class="mdl-data-table__cell--non-numeric" width="80%">内容</th>
                        <th>时间 </th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr v-for="comment in current_comments">
                        <td><input type="checkbox" value="@{{ comment.id }}" v-model="checkedCommentIds" v-on:change="checkIfAllSelected"></td>
                        <td class="mdl-data-table__cell--non-numeric"><a target="_blank" href="@{{comment.post_url}}"><strong>@{{comment.body}}</strong></a><hr style="height:1px;border:none;border-top:1px dashed #d1d1d1;">文章：<a
                                    href="@{{comment.post_url}}" target="_blank">@{{comment.post_title}}</a></td>
                        <td>@{{ comment.created_at }}</td>
                        <td><i class="icon md-delete" aria-hidden="true" style="font-size: 22px" v-on:click="deleteComment(comment.id)"></i></td>
                    </tr>
                    <tr v-if="current_comments.length == 0">
                        <td colspan="4" style="text-align: left">还没有任何评论哦！</td>
                    </tr>

                    </tbody>
                </table>
                @foreach ($comments as $comment)

                @endforeach
                {{$comments->links()}}

                {{--<pre>@{{ $data.checkedCommentIds | json }}</pre>--}}

            </div>

        </div>

    </main>

@endsection

@section('custom_js')
    <script src="/assets/js/avatar_upload.js"></script>
    <script src="/assets/js/animated_bg/animated_bg.js"></script>
    <script>
        var current_comments={!! collect($comments->items()) !!}
        var _token ='{{ csrf_token() }}'
        var snackbarContainer = document.querySelector('#demo-snackbar-example');
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': _token
            }
        });
    </script>
    <script src="/assets/plugins/vue/vue.min_10.js"></script>
    <script src="/assets/plugins/vue/vue-ucenter-comment.js"></script>


@endsection
