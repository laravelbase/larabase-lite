
@foreach($children as $child)
<tr class="odd gradeX">
    {{--<td><input type="checkbox"></td>--}}
    <td>{{$child->id}}</td>
    <td style="padding-left: {{20*$child->depth}}px;color:#59C2E6;font-size: 15px;">{{'|'.$child->depth.'|'.$child->name.'-'.$child->order}}</td>
    <td class="center">{{$child->link}}</td>
    <td class="actions">@include('admin.layouts.content_actions',['content'=>$child])</td>
</tr>
<tr>
    @include('admin.layouts.content_actions_area',['content'=>$child,'contents'=>$contents])
</tr>

@if($children = $child->children and $children->count() > 0)

    @include('admin.layouts.treeChildren',$children)
@endif

@endforeach