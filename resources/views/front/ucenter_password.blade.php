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
    @include('front.layouts.ucenter_top_bg',['title'=>['修改密码','Change PSW']])
    <main class="mdl-layout__content">

        <div class="mdl-grid m-t-20">
            <div class="mdl-cell mdl-cell--3-col">
                @include('front.layouts.ucenter_menu')
            </div>
            <div class="mdl-cell mdl-cell--9-col">
                <div class="register mdl-shadow--2dp">
                    <h5 class="mdl-dialog__title">Change PSW</h5>

                    <div class="wrap" style="margin-top: 30px">
                       <?php $messages = $errors; ?>
                        <form action="{{route('update.ucenter.password')}}" method="post" style="width: 400px" id="form">
                                {!! csrf_field() !!}
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" id="sample3" name="old_psw">
                                <label class="mdl-textfield__label" for="sample3">你现在的密码...</label>
                            </div>
                            <span class="danger">{{$messages->first('old_psw')}}</span>

                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" id="sample3" name="new_psw">
                                <label class="mdl-textfield__label" for="sample3">新密码...</label>
                            </div>
                            <span class="danger">{{$messages->first('new_psw')}}</span>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" id="sample3" name="new_psw_confirmation">
                                <label class="mdl-textfield__label" for="sample3">再输入一遍新密码...</label>
                            </div>
                            <span class="danger">{{$messages->first('new_psw_confirmation')}}</span>
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
