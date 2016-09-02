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
    </style>
@endsection


@section('content')
    @include('front.layouts.ucenter_top_bg',['title'=>['收藏','Collections']])
    <main class="mdl-layout__content">

        <div class="mdl-grid m-t-20">
            <div class="mdl-cell mdl-cell--3-col">
                @include('front.layouts.ucenter_menu')
            </div>
            <div class="mdl-cell mdl-cell--9-col">
                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-d-10" v-if="checkedPostIds.length >0" v-on:click="unlikePosts">
                    不喜欢了
                </button>
                <table class="mdl-data-table  mdl-shadow--2dp" style="width: 100%">
                    <thead>
                    <tr>
                        <th><input type="checkbox" v-on:change="toggleSelect" v-model="selectAll"></th>
                        <th class="mdl-data-table__cell--non-numeric" width="80%">文章标题</th>
                        <th>收藏时间 </th>
                        <th> </th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr v-for="post in current_posts">
                        <td><input type="checkbox" value="@{{ post.id }}" v-model="checkedPostIds" v-on:change="checkIfAllSelected"></td>
                        <td class="mdl-data-table__cell--non-numeric"><a target="_blank" href="/post/@{{ post.id }}">@{{post.title}}</a></td>
                        <td>@{{ post.like_created_at }}</td>
                        <td><i class="icon md-favorite" aria-hidden="true"></i></td>
                    </tr>
                    <tr v-if="current_posts.length == 0">
                        <td colspan="4" style="text-align: left">还没有收藏哦！</td>
                    </tr>

                    </tbody>
                </table>
                @foreach ($posts as $post)

                @endforeach
                {{$posts->links()}}

                {{--<pre>@{{ $data.checkedPostIds | json }}</pre>--}}

            </div>

        </div>

    </main>

@endsection

@section('custom_js')
    <script src="/assets/js/avatar_upload.js"></script>
    <script src="/assets/js/animated_bg/animated_bg.js"></script>
    <script>
        var current_posts={!! collect($posts->items()) !!}
        var _token ='{{ csrf_token() }}'
        var snackbarContainer = document.querySelector('#demo-snackbar-example');
    </script>
    <script src="/assets/plugins/vue/vue.min_10.js"></script>
    <script src="/assets/plugins/vue/vue-ucenter-favorite.js"></script>


@endsection
