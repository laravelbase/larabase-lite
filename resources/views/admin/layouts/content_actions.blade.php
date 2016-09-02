<div class="btn-group btn-group-sm content-actions" role="group">
    <a type="button" class="btn btn-secondary" href="{{route('edit.content',['col_id'=>$collection->id,'c_id'=>$content->id])}}">编辑</a>
    <button type="button" class="btn btn-secondary" v-on:click="toggleMoveActions({{$content->id}})">移动</button>
    <a type="button" class="btn btn-secondary" href="{{route('delete.content',$content->id)}}">删除</a>
</div>