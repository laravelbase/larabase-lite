@extends('admin.layouts.app')

@section('custom_css')
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
                            编辑专辑

                        </h3>

                        <p class="title-description"> 专辑管理界面... </p>
                    </div>
                </div>
            </div>
            <div class="items-search">
                <a href="{{route('list.collections')}}" class="btn btn-primary btn-sm rounded-s">
                    返回列表
                </a>
            </div>
        </div>
        <div class="card items">
            @include('flash::message')
            <form role="form" id="form" method="post" action="{{route('update.collection',$collection->id)}}"
                  enctype="multipart/form-data">
                {!! csrf_field() !!}

                <div class="row">
                    <div class="col-md-6">
                        <div class="card card-block">
                            <div class="title-block">
                                <h3 class="title">

                                </h3></div>

                            <fieldset class="form-group">
                                <label class="control-label">专辑名称</label>
                                <input type="text" class="form-control" name="name" value="{{$collection->name}}">
                            </fieldset>
                            <fieldset class="form-group">
                                <label class="control-label">专辑副标题</label>
                                <input type="text" class="form-control" name="sub_name" value="{{$collection->sub_name}}">
                            </fieldset>
                            <fieldset class="form-group">
                                <label class="control-label">专辑描述</label>
                                <textarea rows="3" class="form-control" name="desc">{{$collection->desc}}</textarea>
                            </fieldset>

                            <h6 class="control-label">封面图片</h6>

                            <label class="file" id="upload" style="margin-top: 5px" data-toggle="tooltip"
                                   data-placement="top" data-original-title="">
                                <input type="file" id="file" name="cover_img">
                                <span class="file-custom"></span>
                            </label>

                        </div>


                        <div class="card card-block">
                            <button class="btn btn-primary" type="submit">保存</button>
                        </div>
                    </div>
                    <div class="col-md-3">


                    </div>
                    <div class="col-md-3">
                        <div class="card card-block">
                            <div class="title-block">
                                <h3 class="title">
                                    &nbsp;
                                </h3>
                            </div>


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

    <script type="text/javascript">
        $(function () {
            $("input[type=file]").next(".file-custom").attr('data-content', getFileName('{{$collection->cover_img}}'));
            $("input[type=file]").change(function (event) {

                var fieldVal = getFileName($(this).val());
                if (fieldVal != undefined || fieldVal != "") {
                    $(this).next(".file-custom").attr('data-content', fieldVal);
                }

                var tmppath = URL.createObjectURL(event.target.files[0]);
                var upload_img = "<img src='" + tmppath + "' width=180/>";
                $('#upload').attr('data-original-title', upload_img);
                $('[data-toggle="tooltip"]').tooltip('show');
            });

            function getFileName(o) {
                var pos = o.lastIndexOf("\\");
                return o.substring(pos + 1);
            }


            $('[data-toggle="tooltip"]').tooltip({
                html: true
            });
        });
    </script>
@endsection
