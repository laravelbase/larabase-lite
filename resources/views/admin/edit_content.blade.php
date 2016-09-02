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
                            专辑目录列表
                            <a href="{{route('rebuild.collection.contents',$collection->id)}}" class="btn btn-primary btn-sm rounded-s">
                                重建列表
                            </a>

                            <div class="action dropdown">
                                <button class="btn  btn-sm rounded-s btn-secondary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    选择专辑
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                    @foreach($collections as $c)
                                    <a class="dropdown-item" href="{{route('collection.contents',['col_id'=>$c->id])}}"></i>{{$c->name}}</a>
                                    @endforeach
                                </div>
                            </div>
                        </h3>
                        <p class="title-description"> 管理专辑目录层级关系，支持无限级分类 </p>
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
                                    当前专辑：{{$collection->name}}
                                </h3></div>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table class="table table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                        <tr>
                                           {{-- <th></th>--}}
                                            <th>ID</th>
                                            <th>项目标题</th>
                                            <th>链接</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @forelse($contents as $content)
                                            <tr class="odd gradeX">
                                               {{-- <td><input type="checkbox"></td>--}}
                                                <td>{{$content->id}}</td>
                                                <td>{{'|'.$content->depth.'|'.$content->name.'-'.$content->order}}</td>
                                                <td class="center">{{$content->link}}</td>
                                                <td class="actions">@include('admin.layouts.content_actions',$content)</td>
                                            </tr>
                                            <tr>
                                                @include('admin.layouts.content_actions_area',['content'=>$content,'contents'=>$contents])
                                            </tr>
                                            @if($children = $content->children and $children->count() > 0)

                                                @include('admin.layouts.treeChildren',$children)
                                            @endif
                                        @empty

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
                                   你正在编辑：
                                </h3>
                                <h5 style="margin-top: 20px;color:deeppink">{{$edit->name}}</h5>
                            </div>
                            <form method="post" action="{{route('update.content',['id'=>$edit->id])}}">
                                {!! csrf_field() !!}
                                <input type="hidden" name="collection_id" value="{{$collection->id}}">
                                <fieldset class="form-group"> <label class="control-label" for="formGroupExampleInput">项目标题</label> <input type="text" class="form-control" id="formGroupExampleInput" name="name" value="{{$edit->name}}"> </fieldset>
                                <fieldset class="form-group"> <label class="control-label" for="formGroupExampleInput">链接文章ID</label> <input type="text" class="form-control" id="formGroupExampleInput" name="link" value="{{$edit->link}}"> </fieldset>

                                <div class="form-group">
                                    <label class="control-label">选择父节点</label>
                                    <select class="form-control" name="parent_id" value="{{$edit->parent_id}}">
                                        <option value=0 style="font-weight: bold;color:forestgreen">顶层</option>
                                        @forelse($contents as $content)
                                        <option value="{{$content->id}}" {{$edit->parent_id ==$content->id?'selected':''}}>{{$content->name}}</option>
                                            @if($children = $content->children and $children->count() > 0)

                                                @include('admin.layouts.treeChildren_select',[$children,$edit])
                                            @endif
                                         @empty

                                        @endforelse
                                    </select>
                                </div>
                                <div class="form-group"> <button type="submit" class="btn btn-primary">保存</button> </div>

                            </form>

                            <pre>@{{ $data | json }}</pre>

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
        vm.$set('target_id',{{$contents->count()>0?$contents->first()->id:''}});
    </script>
@endsection
