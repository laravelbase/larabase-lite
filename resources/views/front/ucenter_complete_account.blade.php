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
    @include('front.layouts.ucenter_top_bg',['title'=>['补全帐号','Complete Account']])
    <main class="mdl-layout__content">

        <div class="mdl-grid m-t-20">
            <div class="mdl-cell mdl-cell--3-col">
                @include('front.layouts.ucenter_menu')
            </div>
            <div class="mdl-cell mdl-cell--9-col">
                <div class="register mdl-shadow--2dp">
                    <h5 class="mdl-dialog__title">Complete Account</h5>

                    <div class="wrap" style="margin-top: 30px">
                       <?php $messages = $errors; ?>
                        <form action="{{route('complete.ucenter.account')}}" method="post" style="width: 400px" id="form">
                                {!! csrf_field() !!}
                            <input type="hidden" name="name" value="{{$auth_user->name}}">
                            <input type="hidden" name="id" value="{{$auth_user->id}}">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="email" id="sample3" name="email">
                                <label class="mdl-textfield__label" for="sample3">电子邮箱...</label>
                            </div>
                            <span class="danger">{{$messages->first('email')}}</span>

                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" id="sample3" name="password">
                                <label class="mdl-textfield__label" for="sample3">密码...</label>
                            </div>
                            <span class="danger">{{$messages->first('password')}}</span>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" id="sample3" name="password_confirmation">
                                <label class="mdl-textfield__label" for="sample3">再输入一遍密码...</label>
                            </div>
                            <span class="danger">{{$messages->first('password_confirmation')}}</span>
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

            $('#submit').on('click',function(){
                $('#form').submit();
            });

        });
    </script>
@endsection
