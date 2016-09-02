<div class="btn-group btn-group-sm category-actions" role="group">
    <a type="button" class="btn btn-secondary" href="{{route('edit.category',$category->id)}}">编辑</a>
    <button type="button" class="btn btn-secondary" v-on:click="toggleMoveActions({{$category->id}})">移动</button>
    <a type="button" class="btn btn-secondary" href="{{route('delete.category',$category->id)}}">删除</a>
</div>