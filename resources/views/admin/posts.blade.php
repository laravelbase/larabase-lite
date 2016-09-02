
@extends('admin.layouts.app')

@section('custom_css')

@endsection


@section('content')
    <article class="content items-list-page">
        <div class="title-search-block">
            <div class="title-block">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="title">
                            文章列表
                            <a href="{{route('create.post')}}" class="btn btn-primary btn-sm rounded-s">
                                新增
                            </a><!--
				 --><div class="action dropdown">
                                <button class="btn  btn-sm rounded-s btn-secondary dropdown-toggle @{{ checkedIds.length>0 || allChecked?'':'disabled' }}" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                                    更多操作...
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                    <a class="dropdown-item" href="#"><i class="fa fa-pencil-square-o icon"></i>放入草稿箱</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#confirm-modal" v-on:click="bulkDelete('posts')"><i class="fa fa-close icon"></i>删除</a>
                                </div>
                            </div>
                        </h3>
                        <p class="title-description"> 文章管理界面... </p>
                    </div>
                </div>
            </div>
            <div class="items-search">
                <form class="form-inline">
                    <div class="input-group"> <input type="text" class="form-control boxed rounded-s" placeholder="文章搜索..."> <span class="input-group-btn">
					<button class="btn btn-secondary rounded-s" type="button">
                        <i class="fa fa-search"></i>
                    </button>
				</span> </div>
                </form>
            </div>
        </div>
        <div class="card items">
            @include('flash::message')
            <ul class="item-list striped">
                <li class="item item-list-header hidden-sm-down">
                    <div class="item-row">
                        <div class="item-col fixed item-col-check"> <label class="item-check" id="select-all-items">
                                <input type="checkbox" class="checkbox" v-on:change="toggleCheckAll($event)">
                                <span></span>
                            </label> </div>
                        <div class="item-col item-col-header fixed item-col-img md">
                            <div> <span></span> </div>
                        </div>
                        <div class="item-col item-col-header item-col-title">
                            <div> <span>标题</span> </div>
                        </div>
                        <div class="item-col item-col-header item-col-sales">
                            <div> <span>ID</span> </div>
                        </div>
                        <div class="item-col item-col-header item-col-stats">
                            <div class="no-overflow"> <span>分类</span> </div>
                        </div>
                        <div class="item-col item-col-header item-col-category">
                            <div class="no-overflow"> <span>状态</span> </div>
                        </div>
                        <div class="item-col item-col-header item-col-author">
                            <div class="no-overflow"> <span>类型</span> </div>
                        </div>
                        <div class="item-col item-col-header item-col-date">
                            <div> <span>发布时间</span> </div>
                        </div>
                        <div class="item-col item-col-header fixed item-col-actions-dropdown"> </div>
                    </div>
                </li>
                @forelse($posts as $post)
                <li class="item">
                    <div class="item-row">
                        <div class="item-col fixed item-col-check"> <label class="item-check" id="select-all-items">
                                <input type="checkbox" class="checkbox" value="{{$post->id}}" v-model="checkedIds">
                                <span></span>
                            </label> </div>
                        <div class="item-col fixed item-col-img md">
                            <a href="item-editor.html">
                                <div class="item-img rounded" style="background-image: url({{$post->feature_img}})"></div>
                            </a>
                        </div>
                        <div class="item-col fixed pull-left item-col-title">
                            <div class="item-heading">标题</div>
                            <div>
                                <a href="{{route('edit.post',$post->id)}}" class="">
                                    <h4 class="item-title">
                                       {{$post->title}}
                                    </h4> </a>
                            </div>
                        </div>
                        <div class="item-col item-col-sales">
                            <div class="item-heading">ID</div>
                            <div> {{$post->id}} </div>
                        </div>
                        <div class="item-col item-col-stats no-overflow">
                            <div class="item-heading">分类</div>
                            <div class="no-overflow">
                                <a href="">{{$post->getCategoriesList()}}</a>
                            </div>
                        </div>
                        <div class="item-col item-col-category no-overflow">
                            <div class="item-heading">Category</div>
                            <div class="no-overflow"> {{$post->status}} </div>
                        </div>
                        <div class="item-col item-col-author">
                            <div class="item-heading">Author</div>
                            <div class="no-overflow"> <a href="">{{$post->Genre}} </a> </div>
                        </div>
                        <div class="item-col item-col-date">
                            <div class="item-heading">Published</div>
                            <div class="no-overflow"> {{$post->created_at}} </div>
                        </div>
                        <div class="item-col fixed item-col-actions-dropdown">
                            <div class="item-actions-dropdown">
                                <a class="item-actions-toggle-btn"> <span class="inactive">
									<i class="fa fa-cog"></i>
								</span> <span class="active">
								<i class="fa fa-chevron-circle-right"></i>
								</span> </a>
                                <div class="item-actions-block">
                                    <ul class="item-actions-list">
                                        <li>
                                            <a class="remove" href="{{route('delete.post',$post->id)}}" {{--data-toggle="modal" data-target="#confirm-modal"--}}> <i class="fa fa-trash-o "></i> </a>
                                        </li>
                                        <li>
                                            <a class="edit" href="{{route('edit.post',$post->id)}}"> <i class="fa fa-pencil"></i> </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                    @empty
                    <li class="item"></li>
                @endforelse

            </ul>
        </div>
        <nav class="text-xs-right">

            {{$posts->links()}}
        </nav>
    </article>


@endsection

@section('custom_js')
    <script>
        var all = {!! $posts->pluck('id')!!};
        var _token = '{{ csrf_token() }}';
    </script>
    <script src="/admin/js/vue_listview.js"></script>
@endsection
