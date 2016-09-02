@extends('front.layouts.app')

@section('custom_css')
    <link rel="stylesheet" href="/assets/plugins/bootstrap3/bootstrap.min.css">
@endsection


        <!-- Main Content -->
@section('content')
    <main class="mdl-layout__content">
        <div class="mdl-layout__tab-panel is-active">
            <div class="mdl-grid">
        <div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">重设密码</div>
                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/password/email') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">注册时用的电子邮件</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}">

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                                    <i class="fa fa-btn fa-envelope"></i> 发送重设密码链接
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
        </div>
            </div>
        </div>
    </main>
@endsection
