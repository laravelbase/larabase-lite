@foreach($children as $child)
    <option value="{{$child->id}}" {{isset($edit) && $edit->parent_id ==$child->id?'selected':''}} style="color:#59C2E6;">|<?php for($i=0;$i<$child->depth;$i++){echo '——';} ?>{{ $child->name}}</option>
    @if($children = $child->children and $children->count() > 0)

        @include('admin.layouts.treeChildren_select',$children)
    @endif
@endforeach