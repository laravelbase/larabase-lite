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
                            角色管理
                        </h3>
                        <p class="title-description"> 管理角色，权限分类等 </p>
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
                                            <th>角色名称</th>
                                            <th>显示名称</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @forelse($roles as $role)
                                            <tr class="odd gradeX">
                                                {{-- <td><input type="checkbox"></td>--}}
                                                <td>{{$role->id}}</td>
                                                <td>{{$role->name}}</td>
                                                <td class="center">{{$role->label}}</td>
                                                <td class="actions">@include('ACL::role_actions',$role)</td>
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
                                    新增角色：
                                </h3>
                            </div>
                            <form method="post" action="{{route('post.role')}}">
                                {!! csrf_field() !!}
                                <fieldset class="form-group"> <label class="control-label" for="formGroupExampleInput">角色名称</label> <input type="text" class="form-control" id="formGroupExampleInput" name="name"> </fieldset>
                                <fieldset class="form-group"> <label class="control-label" for="formGroupExampleInput">角色显示名称</label> <input type="text" class="form-control" id="formGroupExampleInput" name="label"> </fieldset>

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
