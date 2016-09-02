@extends('admin.layouts.app')

@section('custom_css')

@endsection


@section('content')
    <article class="content responsive-tables-page items-list-page">
        <div class="title-search-block">
            <div class="title-block">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="title">
                            权限管理

                        </h3>
                        <p class="title-description"> 管理权限 </p>
                    </div>
                </div>
            </div>
            <div class="items-search">

            </div>
        </div>
        <section class="section">
            @include('flash::message')
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-block">
                            <div class="card-title-block">
                                <h3 class="title">

                                </h3>
                            </div>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table class="table table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                        <tr>
                                            {{--<th></th>--}}
                                            <th>ID</th>
                                            <th>权限名称</th>
                                            <th>显示名称</th>
                                            <th>权限域</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @forelse($permissions as $permission)
                                            <tr class="odd gradeX">
                                                {{-- <td><input type="checkbox"></td>--}}
                                                <td>{{$permission->id}}</td>
                                                <td>{{$permission->name}}</td>
                                                <td class="center">{{$permission->label}}</td>
                                                <td class="center">{{$permission->domain}}</td>
                                                <td class="actions">@include('ACL::permission_actions',$permission)</td>
                                            </tr>
                                        @empty
                                            <tr><td colspan="5">还没有任何条目，你可以新增一项。</td></tr>
                                        @endforelse

                                        </tbody>
                                    </table>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-block">
                            <div class="card-title-block">
                                <h3 class="title">
                                    编辑权限：
                                </h3>
                            </div>
                            <form method="post" action="{{route('update.permission',$permission_to_update)}}">
                                {!! csrf_field() !!}
                                <fieldset class="form-group"> <label class="control-label" for="formGroupExampleInput">权限名称</label> <input type="text" class="form-control" id="formGroupExampleInput" name="name" value="{{$permission_to_update->name}}"> </fieldset>
                                <fieldset class="form-group"> <label class="control-label" for="formGroupExampleInput">权限显示名称</label> <input type="text" class="form-control" id="formGroupExampleInput" name="label" value="{{$permission_to_update->label}}"> </fieldset>
                                <fieldset class="form-group"> <label class="control-label" for="formGroupExampleInput">权限域</label> <input type="text" class="form-control" id="formGroupExampleInput" name="domain" value="{{$permission_to_update->domain}}"> </fieldset>
                                <fieldset class="form-group"> <label class="control-label" for="formGroupExampleInput">权限域显示名称</label> <input type="text" class="form-control" id="formGroupExampleInput" name="domain_label" value="{{$permission_to_update->domain_label}}"> </fieldset>

                                <div class="form-group"> <button type="submit" class="btn btn-primary">保存</button> </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </article>

@endsection

@section('custom_js')

@endsection
