
@foreach($children as $child)
<tr class="odd gradeX">
    {{--<td><input type="checkbox"></td>--}}
    <td>{{$child->id}}</td>
    <td style="padding-left: {{20*$child->depth}}px;color:#59C2E6;font-size: 15px;">{{'|'.$child->depth.'|'.$child->name.'-'.$child->order}}</td>
    <td class="center">{{$child->link}}</td>
    <td class="actions">@include('admin.category.actions',['category'=>$child])</td>
</tr>
<tr>
    @include('admin.category.actions_area',['category'=>$child,'categories'=>$categories])
</tr>

@if($children = $child->children and $children->count() > 0)

    @include('admin.category.treeChildren',$children)
@endif

@endforeach