@extends('admin.layouts.app')

@section('custom_css')
    <link rel="stylesheet" href="/assets/plugins/mdeditor/css/editormd.min.css">
    <style>
        .file-custom:after {
            content: attr(data-content);
        }
        .file-custom:before {
            content: '浏览';
        }
        .file-custom{
            overflow: hidden;
        }
        .file {
            width: 100%;
        }
    </style>
@endsection


@section('content')
    <article class="content items-list-page">

        <div class="title-search-block">
            <div class="title-block">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="title">
                           新建文章

                        </h3>
                        <p class="title-description"> 文章管理界面... </p>
                    </div>
                </div>
            </div>
            <div class="items-search">
                <a href="{{route('list.posts')}}" class="btn btn-primary btn-sm rounded-s">
                    返回列表
                </a>
            </div>
        </div>
        <div class="card items">
            @include('flash::message')
            <form role="form" id="form" method="post" action="{{route('post.post')}}" enctype="multipart/form-data">
                {!! csrf_field() !!}
                <input type="hidden" name="submit_type" id="submit_type">
            <div class="row">
                <div class="col-md-6">
                    <div class="card card-block">
                        <div class="title-block">
                            <h3 class="title">

                            </h3> </div>

                            <fieldset class="form-group">
                                <label class="control-label">文章标题</label>
                                <input type="text" class="form-control"  name="title">
                            </fieldset>
                            <div class="form-group">
                                <label class="control-label">分类</label>
                                <select class="form-control" name="category_id">
                                    @forelse($categories as $category)
                                    <option value="{{$category->id}}">{{$category->name}}</option>
                                        @empty
                                    @endforelse
                                </select>
                            </div>



                    </div>
                </div>
                <div class="col-md-4">


                </div>
                <div class="col-md-2">
                    <div class="card card-block">
                        <div class="title-block">
                            <h3 class="title">
                                &nbsp;
                            </h3>
                        </div>
                            <button class="btn btn-secondary btn-block submit" data-submit-type="1">发布并返回</button>
                            <button class="btn btn-secondary btn-block submit"  data-submit-type="2">发布并新建</button>
                            <button class="btn btn-secondary btn-block submit"  data-submit-type="3">存为草稿</button>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="padding: 0 35px;">
                    <label class="control-label">文章正文</label>
                    <div id="editormd">
                        <textarea style="display:none;" name="body">### Hello Editor.md !</textarea>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card card-block">

                            <fieldset class="form-group">
                                <label class="control-label">SEO 关键字</label>
                                <input type="text" class="form-control"  name="seo_keywords">
                            </fieldset>
                            <fieldset class="form-group">
                                <label class="control-label">SEO 描述</label>
                                <textarea rows="3" class="form-control" name="seo_desc"></textarea>
                            </fieldset>



                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card card-block">
                        <h6 class="control-label">封面图片</h6>

                        <label class="file" id="upload" style="margin-top: 5px" data-toggle="tooltip" data-placement="top" data-original-title="">
                            <input type="file" id="file" name="feature_img">
                            <span class="file-custom"></span>
                        </label>

                    </div>
                </div>
            </div>
            </form>
        </div>
        <nav class="text-xs-right">

        </nav>
    </article>

@endsection

@section('custom_js')
    <script src="/assets/plugins/mdeditor/editormd.min.js"></script>
    <script type="text/javascript">
        $(function() {
            var editor = editormd("editormd", {
                path : "/assets/plugins/mdeditor/lib/",
                height:500

            });

            $("input[type=file]").change(function(event){

                var fieldVal = getFileName($(this).val());
                if (fieldVal != undefined || fieldVal != "") {
                    $(this).next(".file-custom").attr('data-content', fieldVal);
                }

                var tmppath = URL.createObjectURL(event.target.files[0]);
                var upload_img = "<img src='"+tmppath+"' width=180/>";
                $('#upload').attr('data-original-title',upload_img);
                $('[data-toggle="tooltip"]').tooltip('show');
            });

            function getFileName(o){
                var pos=o.lastIndexOf("\\");
                return o.substring(pos+1);
            }

            $('button.submit').on('click',function(){
                $('#submit_type').val($(this).data('submit-type'));
                $('#form').submit();
            });

            $('[data-toggle="tooltip"]').tooltip({
                html: true
            });
        });
    </script>
@endsection
