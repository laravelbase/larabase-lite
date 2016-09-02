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
        .bg_mark{
            background-color: #D6F1FF;
        }
    </style>
@endsection


@section('content')
    @include('front.layouts.ucenter_top_bg',['title'=>['消息','Notifications']])
    <main class="mdl-layout__content">

        <div class="mdl-grid m-t-20">
            <div class="mdl-cell mdl-cell--3-col">
                @include('front.layouts.ucenter_menu')
            </div>
            <div class="mdl-cell mdl-cell--9-col">
                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-d-10" v-if="checkedNotificationIds.length >0" v-on:click="deleteNotifications">
                    删除
                </button>
                <table class="mdl-data-table  mdl-shadow--2dp" style="width: 100%">
                    <thead>
                    <tr>
                        <th><input type="checkbox" v-on:change="toggleSelect" v-model="selectAll"></th>
                        <th class="mdl-data-table__cell--non-numeric" width="70%">消息</th>
                        <th>来自</th>
                        <th>时间 </th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr v-for="notification in current_notifications" :class=" colorUnread(notification.id)">
                        <td><input type="checkbox" value="@{{ notification.id }}" v-model="checkedNotificationIds" v-on:change="checkIfAllSelected"></td>
                        <td class="mdl-data-table__cell--non-numeric"><a target="_blank" href="@{{ notification.url}}"><strong>@{{notification.text}}</strong></a></td>

                        <td><img v-bind:src='notification.user.avatar' class="avatar-in-list">@{{ notification.user.name }}</td>
                        <td>@{{ notification.created_at }}</td>
                        <td><i class="icon md-delete" aria-hidden="true" style="font-size: 22px" v-on:click="deleteNotification(notification.id)"></i></td>
                    </tr>
                    <tr v-if="current_notifications.length == 0">
                        <td colspan="6" style="text-align: left">还没有任何帖子哦！去<a href="/forum" target="_blank"> 论坛 </a>逛逛 </td>
                    </tr>

                    </tbody>
                </table>
                @foreach ($notifications as $notification)

                @endforeach
                {{$notifications->links()}}

                {{--<pre>@{{ $data.checkedNotificationIds | json }}</pre>--}}

            </div>

        </div>

    </main>

@endsection

@section('custom_js')
    <script src="/assets/js/avatar_upload.js"></script>
    <script src="/assets/js/animated_bg/animated_bg.js"></script>
    <script>
        var current_notifications={!! collect($notifications->items()) !!}
        var _token ='{{ csrf_token() }}';
        var unread_ids = {!! $unread_notifications->pluck('id')!!};

        var snackbarContainer = document.querySelector('#demo-snackbar-example');
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': _token
            }
        });
    </script>
    <script src="/assets/plugins/vue/vue.min_10.js"></script>
    <script src="/assets/plugins/vue/vue-ucenter-notification.js"></script>


@endsection
