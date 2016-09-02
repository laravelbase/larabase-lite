
<div class="modal modal-login hidden" style="height: 380px">

    <div class="form">
        <h5 class="mdl-dialog__title" style="padding-left: 0;margin-bottom: 20px">口令</h5>
        <form method="POST" action="{{ url('/login') }}">
            {!! csrf_field() !!}
            <div class="mdl-textfield mdl-js-textfield">
                <input class="mdl-textfield__input" type="text" name="email" style="padding: 10px 10px" value="{{ old('email') }}">
                <label class="mdl-textfield__label" style="padding: 10px 10px">邮箱...</label>
                @if ($errors->has('email'))
                    <span class="help-block">
                      <strong>{{ $errors->first('email') }}</strong>
                    </span>
                @endif
                @if ($errors->has('non_exist'))
                    <span class="help-block">
                      <strong>{{ $errors->first('non_exist') }}</strong>
                    </span>
                @endif
                @if ($errors->has('not_verified'))
                    <span class="help-block">
                      <strong>{{ $errors->first('not_verified') }}</strong>
                    </span>
                @endif
            </div>
            <div class="mdl-textfield mdl-js-textfield">
                <input class="mdl-textfield__input" type="password" name="password" style="padding: 10px 10px">
                <label class="mdl-textfield__label" style="padding: 10px 10px">密码...</label>
                @if ($errors->has('password'))
                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                @endif
            </div>
            <div class="mdl-textfield mdl-js-textfield">
                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox-2">
                    <input type="checkbox" id="checkbox-2" class="mdl-checkbox__input" name="remember">
                    <span class="mdl-checkbox__label">记住登录</span>
                </label>

            </div>

            <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored m-t-20">
                登录
            </button>
            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect nope m-t-20 m-l-10">
                取消
            </button>
        </form>
    </div>
    <div class="invite">
        <ul class="list-inline social_login">
            <li><a href="/auth/github"><img src="/assets/images/github.svg" alt="" width="43"></a></li>
            <li><a href="/auth/qq"><img src="/assets/images/qq.svg" alt="" width="45"></a></li>
        </ul>
        <h6>也可以用社交账号登录</h6>
        <hr>
        <a href="{{ url('/password/reset') }}" class="text-right">忘记密码？</a>
        {{-- <div class="nope">不想登录了</div>--}}
        {{-- <div title="close" class="close"></div>--}}
    </div>
</div>

<div class="modal modal-register hidden" style="height: 474px">

    <div class="form">
        <h5 class="mdl-dialog__title" style="padding-left: 0;margin-bottom: 20px">注册 <small>Register</small></h5>
        <form method="POST" action="{{ url('/register') }}">
            {!! csrf_field() !!}

            <div class="mdl-textfield mdl-js-textfield">
                <input class="mdl-textfield__input" type="text" name="name" style="padding: 10px 10px">
                <label class="mdl-textfield__label" style="padding: 10px 10px">名称...</label>

                @if($errors->has('name'))
                    <span class="help-block">
                          <strong>{{ $errors->first('name') }}</strong>
                    </span>
                @endif

            </div>
            <div class="mdl-textfield mdl-js-textfield">
                <input class="mdl-textfield__input" type="text" name="email" style="padding: 10px 10px">
                <label class="mdl-textfield__label" style="padding: 10px 10px">邮箱...</label>
                @if ($errors->has('email'))
                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                @endif
            </div>

            <div class="mdl-textfield mdl-js-textfield">
                <input class="mdl-textfield__input" type="password" name="password" style="padding: 10px 10px">
                <label class="mdl-textfield__label" style="padding: 10px 10px">密码...</label>
                @if ($errors->has('password'))
                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                @endif
            </div>

            <div class="mdl-textfield mdl-js-textfield">
                <input class="mdl-textfield__input" type="password" name="password_confirmation" style="padding: 10px 10px">
                <label class="mdl-textfield__label" style="padding: 10px 10px">再输入一次密码...</label>
                @if ($errors->has('password_confirmation'))
                    <span class="help-block">
                                        <strong>{{ $errors->first('password_confirmation') }}</strong>
                                    </span>
                @endif
            </div>
            <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored m-t-20">
                注册
            </button>
            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect nope m-t-20 m-l-10">
                取消
            </button>
        </form>
    </div>
    <div class="invite" style="position: relative">
        <img src="/assets/images/book/17.png" alt="" class="register_cover">
        <h1 style="padding-top:344px;padding-left:20px">Lara <strong style="color: #ed478c">Base</strong></h1>
        {{-- <div class="nope">不想登录了</div>--}}
        {{-- <div title="close" class="close"></div>--}}
    </div>
</div>