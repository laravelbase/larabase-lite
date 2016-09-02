@extends('admin.layouts.app')

@section('custom_css')
    <style>
        .gavatar{
            color: rgb(255, 255, 255); background-color: #c6c699;
            display: inline-block;
            font-size: 16px; border-radius: 80px; width: 80px; height: 80px; line-height: 80px; margin: 15px; text-align: center;

        }

    </style>
@endsection


@section('content')
    <article class="content responsive-tables-page items-list-page">
        <div class="title-search-block">
            <div class="title-block">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="title">
                            分配权限
                        </h3>
                        <p class="title-description"> 给特定角色分配指定权限 </p>
                    </div>
                </div>
            </div>
            <div class="items-search">

            </div>
        </div>
        <section class="section">
            @include('flash::message')
            <form action="{{route('post.role.permissions',$role->id)}}" method="post" enctype="multipart/form-data">
                {!! csrf_field() !!}
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-block">
                            <div class="card-title-block">
                                <h3 class="title">
                                当前角色
                                </h3>
                                <hr>
                                <div class="gavatar">{{$role->label}}</div>
                                    <ul class="list-unstyled" style="display: inline-block;width: 30%">
                                        <li>{{$role->name}}</li>
                                        <li>{{$role->desc}}</li>
                                    </ul>

                                <hr>
                            </div>

                            @foreach($permissions as $key =>$sub_permissions)
                                <div class="form-group">
                                    <label>
                                        <input class="checkbox" type="checkbox">
                                        <span class="over_check"></span>
                                    </label>
                                    <label class="control-label" style="color: #00c4ff">{{$key}}</label>
                                    <div>
                                    @foreach($sub_permissions as $permission)
                                        <label>
                                            @if($role->hasPermission($permission))
                                                <input class="checkbox" type="checkbox" name="permissions[]" value="{{$permission->id}}" checked>
                                                @else
                                            <input class="checkbox" type="checkbox" name="permissions[]" value="{{$permission->id}}">
                                            @endif
                                            <span>{{$permission->label}}{{$permission->name}}</span>
                                        </label>
                                        @endforeach
                                    </div>
                                </div>
                            @endforeach


                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-block">
                            <div class="card-title-block">

                            </div>
                            <button class="btn btn-success" type="submit">保存方案</button>
                            <a type="button" class="btn btn-info" href="{{route('edit.role',$role->id)}}">编辑角色</a>
                            <a type="button" class="btn btn-secondary" href="{{url()->previous()}}">返回</a>


                        </div>
                    </div>
                </div>
            </div>
            </form>
        </section>
    </article>

@endsection

@section('custom_js')
    <script>
        $(function(){
            $('.over_check').on('click',function(){

               if(!$(this).prev("input[type='checkbox']").is(':checked')){
                   $(this).parent().parent().find('div input').each(function(){
                       $(this).prop('checked','checked');
                   });
               }else{
                   $(this).parent().parent().find('div input').each(function(){
                       $(this).removeAttr('checked');
                   });
               }
        });
        });
    </script>
@endsection
