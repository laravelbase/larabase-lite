<div class="btn-group btn-group-sm content-actions" role="group">
    <a type="button" class="btn btn-secondary" href="{{route('edit.role',$role->id)}}">编辑</a>
    <a type="button" class="btn btn-secondary" href="{{route('give.permissions',$role->id)}}">分配权限</a>
    <a type="button" class="btn btn-secondary" href="{{route('delete.role',$role->id)}}">删除</a>
</div>