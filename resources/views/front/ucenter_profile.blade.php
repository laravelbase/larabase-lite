@extends('front.layouts.app')

@section('custom_css')

    <style>
        .demo-card-image.mdl-card {
            width: 200px;
            height: 200px;
            background: url({{$auth_user->avatar}}) center / cover;
            margin: 0 auto 30px;

        }
        .demo-card-image > .mdl-card__actions {
            height: 42px;
            padding: 10px;
            background: rgba(0, 0, 0, 0.2);
        }
        .demo-card-image__filename {
            color: #fff;
            font-size: 14px;
            font-weight: 400;
        }
        .md-delete:hover {
            color: red;
            cursor: pointer;
        }
        .mdl-textfield{
            width: 500px;
        }
        #age{
            font-size: 25px;
            color: lightblue;
            font-weight: bolder;
        }


    </style>
@endsection


@section('content')
    @include('front.layouts.ucenter_top_bg',['title'=>['档案','Profile']])
    <main class="mdl-layout__content">

        <div class="mdl-grid m-t-20">
            <div class="mdl-cell mdl-cell--3-col">
                @include('front.layouts.ucenter_menu')
            </div>
            <div class="mdl-cell mdl-cell--9-col">
                <div class="register mdl-shadow--2dp">
                    <h5 class="mdl-dialog__title">Profile</h5>

                    <div class="wrap">
                        <form action="{{route('update.ucenter.profile')}}" method="post" style="width: 400px" id="form">
                                {!! csrf_field() !!}
                                <div class="mdl-textfield mdl-js-textfield">

                                    <input class="mdl-textfield__input" type="text" value="{{$auth_user->name}}" name="name">
                                    <label class="mdl-textfield__label" >用户名...</label>

                                </div>
                                <div class="mdl-textfield mdl-js-textfield">
                                    <input class="mdl-textfield__input" type="email"  value="{{$auth_user->email}}" disabled>
                                    <label class="mdl-textfield__label" >邮箱...</label>

                                </div>
                                <div class="mdl-textfield mdl-js-textfield">
                                    <h6>性别</h6>
                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-1">
                                            <input type="radio" id="option-1" class="mdl-radio__button" name="gender" value="male" name="gender" {{$auth_user->gender =='male'?'checked':''}}>
                                            <span class="mdl-radio__label">男 &nbsp;&nbsp;&nbsp;</span>
                                        </label>
                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-2">
                                            <input type="radio" id="option-2" class="mdl-radio__button" name="gender" value="unknown" name="gender" {{$auth_user->gender =='unknown'?'checked':''}}>
                                            <span class="mdl-radio__label">不确定 &nbsp;&nbsp;&nbsp;</span>
                                        </label>
                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-3">
                                            <input type="radio" id="option-3" class="mdl-radio__button" name="gender" value="female" name="gender" {{$auth_user->gender =='female'?'checked':''}}>
                                            <span class="mdl-radio__label">女 &nbsp;&nbsp;&nbsp;</span>
                                        </label>
                                </div>
                            <div class="mdl-textfield mdl-js-textfield">
                            <h6>年龄 <span id="age">{{$auth_user->age?$auth_user->age:25}}</span></h6>
                            <!-- Slider with Starting Value -->
                            <input class="mdl-slider mdl-js-slider" type="range"
                                   min="16" max="45" value="{{$auth_user->age?$auth_user->age:25}}" tabindex="0" id="age-slider" name="age">
                            </div>

                        </form>
                    </div>
                    <div class="mdl-dialog__actions">
                        <button type="button" class="mdl-button mdl-button--raised" id="submit"><strong>保存</strong></button>
                    </div>
                </div>

            </div>

        </div>

    </main>

@endsection

@section('custom_js')
    <script src="/assets/js/avatar_upload.js"></script>
    <script src="/assets/js/animated_bg/animated_bg.js"></script>
    <script>

        $(function() {
            $('#age-slider').on('change',function(){
                $('#age').text($(this).val());
            });
            $('#submit').on('click',function(){
                $('#form').submit();
            });

        });
    </script>
@endsection
