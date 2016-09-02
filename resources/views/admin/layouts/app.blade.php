@include('admin.layouts.head')
<body>
<div class="main-wrapper">
    <div class="app" id="app">
@include('admin.layouts.menu')

@yield('content')

@include('admin.layouts.footer')
    </div>
</div>
@include('admin.layouts.scripts')

</body>
</html>
