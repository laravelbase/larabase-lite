<script>
    var avatar_img = '{{$auth_user->avatar}}'
</script>
<div class="avatar_actions" style="display: none">
<button class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored" style="background-color: #09A884" id="upload">
    <i class="icon md-floppy" aria-hidden="true"></i>
</button>
    <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect" id="cancel">
        <i class="icon md-close" aria-hidden="true"></i>
    </button>
</div>
<div class="demo-card-image mdl-card mdl-shadow--2dp" id="avatar_cover" style="position:relative;margin-bottom: 10px">
    <div class="mdl-card__title mdl-card--expand">
    </div>
    <div class="mdl-card__actions" >
        <span class="demo-card-image__filename">{{$auth_user->name}}</span>
    </div>

</div>
<div class="change_avatar">
    不喜欢？<strong><a href="{{route('change.ucenter.avatar')}}" id="change_avatar">换一个随机头像</a></strong>
</div>
<form action="{{route('update.ucenter.avatar')}}" enctype="multipart/form-data" method="post" id="avatar_form">
    {!! csrf_field() !!}
    <input type="file" name="avatar" style="display: none" id="avatar_input">
</form>
<ul class="demo-list-item mdl-list" style="width: 200px;margin: 0 auto;">
    <li class="mdl-list__item {{\Request::route()->getName()=='ucenter'?'active':''}}">
        <a clapa="mdl-list__item-primary-content" href="{{route('ucenter')}}">
            <span clapa="mdl-list__item-primary-content">
       控制台
    </span>

        </a>

    </li>
    <li class="mdl-list__item {{\Request::route()->getName()=='ucenter.notifications'?'active':''}}">
        <a clapa="mdl-list__item-primary-content" href="{{route('ucenter.notifications')}}">
            <span clapa="mdl-list__item-primary-content">
      消息
    </span>
        </a>
    </li>

    <li class="mdl-list__item {{\Request::route()->getName()=='ucenter.favorites'?'active':''}}">
        <a clapa="mdl-list__item-primary-content" href="{{route('ucenter.favorites')}}">
            <span clapa="mdl-list__item-primary-content">
      我的收藏
    </span>

        </a>

    </li>
    <li class="mdl-list__item {{\Request::route()->getName()=='ucenter.comments'?'active':''}}">
        <a class="mdl-list__item-primary-content" href="{{route('ucenter.comments')}}">
            <span clapa="mdl-list__item-primary-content">我的评论   </span> </a>
    </li>

    <li class="mdl-list__item {{\Request::route()->getName()=='ucenter.profile'?'active':''}}">
        <a class="mdl-list__item-primary-content" href="{{route('ucenter.profile')}}">
            <span clapa="mdl-list__item-primary-content">我的资料</span>
        </a>
    </li>
    <li class="mdl-list__item {{\Request::route()->getName()=='ucenter.password'?'active':''}}">
        <a class="mdl-list__item-primary-content"href="{{route('ucenter.password')}}">
            <span clapa="mdl-list__item-primary-content">修改密码</span>
        </a>
    </li>
    @if($auth_user->accountNotCompleted())
    <li class="mdl-list__item {{\Request::route()->getName()=='show.ucenter.account.complete'?'active':''}}">
        <a class="mdl-list__item-primary-content"href="{{route('show.ucenter.account.complete')}}">
            <span clapa="mdl-list__item-primary-content">补全帐号</span>
        </a>
    </li>
    @endif
</ul>