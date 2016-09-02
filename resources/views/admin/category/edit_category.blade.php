@extends('admin.layouts.app')

@section('custom_css')
    <link rel="stylesheet" href="/admin/css/contents.css">
@endsection


@section('content')

    <article class="content responsive-tables-page items-list-page">
        <div class="title-search-block">
            <div class="title-block">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="title">
                            分类列表
                            <a href="{{route('rebuild.categories')}}" class="btn btn-primary btn-sm rounded-s">
                                重建列表
                            </a>

                        </h3>
                        <p class="title-description"> 管理专分类层级关系，支持无限级分类 </p>
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
                                            <th>分类名称</th>
                                            <th>链接</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @forelse($categories as $category)
                                            <tr class="odd gradeX">
                                               {{-- <td><input type="checkbox"></td>--}}
                                                <td>{{$category->id}}</td>
                                                <td>{{'|'.$category->depth.'|'.$category->name.'-'.$category->order}}</td>
                                                <td class="center">{{$category->link}}</td>
                                                <td class="actions">@include('admin.category.actions',$category)</td>
                                            </tr>
                                            <tr>
                                                @include('admin.category.actions_area',['category'=>$category,'categories'=>$categories])
                                            </tr>

                                            @if($children = $category->children and $children->count() > 0)

                                                @include('admin.category.treeChildren',$children)
                                            @endif
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
                                    编辑条目：
                                </h3>
                            </div>
                            <form method="post" action="{{route('update.category',$edit->id)}}">
                                {!! csrf_field() !!}
                                <input type="hidden" name="type" value="post">
                                <fieldset class="form-group"> <label class="control-label" for="formGroupExampleInput">分类名称</label> <input type="text" class="form-control" id="formGroupExampleInput" name="name" value="{{$edit->name}}"> </fieldset>
                                <fieldset class="form-group"> <label class="control-label" for="formGroupExampleInput">链接</label> <input type="text" class="form-control" id="formGroupExampleInput" name="link" value="{{$edit->link}}"> </fieldset>

                                <div class="form-group">
                                    <label class="control-label">选择父节点</label>
                                    <select class="form-control" name="parent_id">
                                        <option value=0 style="font-weight: bold;color:forestgreen">顶层</option>
                                        @forelse($categories as $category)

                                            <option value="{{$category->id}}" {{$edit->parent_id ==$category->id?'selected':''}}>{{$category->name}}</option>
                                            @if($children = $category->children and $children->count() > 0)

                                                @include('admin.category.treeChildren_select',[$children,$edit])
                                            @endif
                                         @empty

                                        @endforelse
                                    </select>
                                </div>
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
    <script type="text/javascript" src="/admin/js/vue_contents.js"></script>
    <script>
        vm.$set('target_id',{{$categories->count()>0?$categories->first()->id:''}});
    </script>

@endsection
