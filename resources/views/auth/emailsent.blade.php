@extends('front.layouts.app')

@section('custom_css')
    <style>
        /****************** mail ****************/

        .mail{
            width:108px;
            height:78px;
            background:#eeecdf;
            border-radius:6px;
            position:absolute;
            left:50%;
            margin-left:-54px;
            top:50%;
            margin-top:-39px;
            box-shadow: 0 2px 0 0px rgba(0,0,0,0.25), inset 0 1px 0 0 rgba(255,255,255,0.2);
            overflow:hidden;
        }

        .mail:before {
            content:"";
            width: 0;
            height: 0;
            position:absolute;
            top:6px;
            border-left: 54px solid transparent;
            border-right: 54px solid transparent;
            border-top: 50px solid rgba(0,0,0,0.3);
        }

        .mail:after {
            content:"";
            width: 0;
            height: 0;
            position:absolute;
            top:6px;
            border-left: 54px solid transparent;
            border-right: 54px solid transparent;
            border-top: 39px solid #eeecdf;
        }

        .mail .shadows {
            width: 0;
            height: 0;
            border-left: 42px solid transparent;
            border-right: 42px solid transparent;
            border-bottom: 30px solid rgba(0,0,0,0.12);
            position:absolute;
            bottom:0;
            left:50%;
            margin-left:-42px;
        }
        .mail .shadows:after {
            content:"";
            position:absolute;
            left:-54px;
            top:-41px;
            width: 0;
            height: 0;
            border-top: 41px solid transparent;
            border-left: 54px solid rgba(0,0,0,0.06);
            border-bottom: 39px solid transparent;
        }
        .mail .shadows:before {
            content:"";
            position:absolute;
            right:-54px;
            top:-42px;
            width: 0;
            height: 0;
            border-top: 42px solid transparent;
            border-right: 54px solid rgba(0,0,0,0.2);
            border-bottom: 39px solid transparent;
        }

    </style>
@endsection


@section('content')
    <main class="mdl-layout__content">
        <div class="icon">
            <div class="mail" style="top:65%">
                <div class="shadows"></div>
            </div>
        </div>
        <div class="text-center" style="margin-top: 60px">
            <h4>亲爱的{{$request->name}}</h4>
            <p>我们已经将一封邮件发送到您的   <strong style="color:purple">{{$request->email}}</strong>邮箱中,请查收,点击邮件中的链接即可完成注册.</p>
        </div>

    </main>

@endsection

@section('custom_js')

@endsection
