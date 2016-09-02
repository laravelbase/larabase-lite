@include('front.layouts.head')
<body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base" style="overflow: hidden;padding-top: 0" >
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
@include('front.layouts.menu')
@yield('content')

@include('front.layouts.footer')
</div>
@include('front.layouts.scripts')

</body>
</html>
