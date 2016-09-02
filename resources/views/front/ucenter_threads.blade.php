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
    @include('front.layouts.ucenter_top_bg',['title'=>['论坛发帖','Forum Threads']])
    <main class="mdl-layout__content">

        <div class="mdl-grid m-t-20">
            <div class="mdl-cell mdl-cell--3-col">
                @include('front.layouts.ucenter_menu')
            </div>
            <div class="mdl-cell mdl-cell--9-col">
                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-d-10" v-if="checkedThreadIds.length >0" v-on:click="deleteThreads">
                    删除
                </button>
                <table class="mdl-data-table  mdl-shadow--2dp" style="width: 100%">
                    <thead>
                    <tr>
                        <th><input type="checkbox" v-on:change="toggleSelect" v-model="selectAll"></th>
                        <th class="mdl-data-table__cell--non-numeric" width="70%">标题</th>
                        <th>分类</th>
                        <th>人气</th>
                        <th>时间 </th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr v-for="thread in current_threads">
                        <td><input type="checkbox" value="@{{ thread.id }}" v-model="checkedThreadIds" v-on:change="checkIfAllSelected"></td>
                        <td class="mdl-data-table__cell--non-numeric"><a target="_blank" href="@{{ thread.url}}"><strong>@{{thread.title}}</strong></a></td>
                        <td><a href="@{{ thread.category_url}}" target="_blank">@{{ thread.category_name}}</a></td>
                        <td>@{{thread.posts_count}}</td>
                        <td>@{{ thread.created_at }}</td>
                        <td><i class="icon md-delete" aria-hidden="true" style="font-size: 22px" v-on:click="deleteThread(thread.id)"></i></td>
                    </tr>
                    <tr v-if="current_threads.length == 0">
                        <td colspan="6" style="text-align: left">还没有任何帖子哦！去<a href="/forum" target="_blank"> 论坛 </a>逛逛 </td>
                    </tr>

                    </tbody>
                </table>
                @foreach ($threads as $thread)

                @endforeach
                {{$threads->links()}}

                {{--<pre>@{{ $data.checkedThreadIds | json }}</pre>--}}

            </div>

        </div>

    </main>

@endsection

@section('custom_js')
    <script src="/assets/js/avatar_upload.js"></script>
    <script src="/assets/js/animated_bg/animated_bg.js"></script>
    <script>
        var current_threads={!! collect($threads->items()) !!}
        var _token ='{{ csrf_token() }}'
        var snackbarContainer = document.querySelector('#demo-snackbar-example');
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': _token
            }
        });
    </script>
    <script src="/assets/plugins/vue/vue.min_10.js"></script>
    <script src="/assets/plugins/vue/vue-ucenter-thread.js"></script>


@endsection
