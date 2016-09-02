<li {{--style="padding-left: {{10*$item->depth}}px"--}}>
    @if($item->link)
    <a href="/collection/{{$collection->id}}/post/{{$item->link}}">{{str_limit($item->name,56)}}</a>
    @else
        <a href="#">{{str_limit($item->name,56)}}</a>
    @endif

</li>
@if ($item->children and $item->children->count() > 0)
    <ul>
        @foreach($item->children as $item)
            @include('front.layouts.treeChildren',$item)
        @endforeach
    </ul>
@endif