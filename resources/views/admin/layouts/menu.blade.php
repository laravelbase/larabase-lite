<aside class="sidebar">
    <div class="sidebar-container">
        <div class="sidebar-header">
            <div class="brand">
                <div class="logo"> <span class="l l1"></span> <span class="l l2"></span> <span class="l l3"></span> <span class="l l4"></span> <span class="l l5"></span> </div> LaraBase </div>
        </div>
        <nav class="menu">
            <ul class="nav metismenu" id="sidebar-menu">

                <li class="active open">
                    <a href=""> <i class="fa fa-th-large"></i> 文章管理 <i class="fa arrow"></i> </a>
                    <ul>
                        <li class="active"> <a href="{{route('list.posts')}}">
                                文章列表
                            </a> </li>
                        <li> <a href="{{route('create.post')}}">
                                新建文章
                            </a> </li>
                        <li> <a href="{{route('filter.posts.status','草稿')}}">
                                草稿箱
                            </a> </li>
                        <li> <a href="item-editor.html">
                                回收站
                            </a> </li>
                    </ul>
                </li>

                <li>
                    <a href=""> <i class="fa fa-bar-chart"></i> 分类管理 <i class="fa arrow"></i> </a>
                    <ul>
                        <li> <a href="{{route('categories')}}">
                                分类列表
                            </a>
                        </li>
                        <li> <a href="{{route('categories')}}">
                                新建分类
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href=""> <i class="fa fa-bar-chart"></i> 专辑管理 <i class="fa arrow"></i> </a>
                    <ul>
                        <li> <a href="{{route('list.collections')}}">
                                专辑列表
                            </a>
                        </li>
                        <li> <a href="{{route('create.collection')}}">
                                新建专辑
                            </a>
                        </li>

                    </ul>
                </li>




                <li>
                    <a href="index.html"> <i class="fa fa-home"></i> 权限管理 <i class="fa arrow"></i></a>
                    <ul>
                        <li> <a href="{{route('roles')}}">
                                角色管理
                            </a>
                        </li>
                        <li> <a href="{{route('permissions')}}">
                                权限管理
                            </a>
                        </li>
                    </ul>
                </li>


            </ul>
        </nav>
    </div>
    <footer class="sidebar-footer">

    </footer>
</aside>