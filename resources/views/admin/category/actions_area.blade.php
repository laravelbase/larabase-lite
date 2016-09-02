<td colspan="5" v-if="showMoveActions && current_id=='{{$category->id}}'" style="display: none" class="content_actions_area">
    <div class="row">
        <div class="col-md-4">
            <a type="button" class="btn btn-primary btn-sm" href="{{route('move_up.category',$category->id)}}">向上移</a>
            <a type="button" class="btn btn-primary btn-sm" href="{{route('move_down.category',$category->id)}}">向下移</a>
        </div>
        <div class="col-md-8" style="padding-left: 48px;">
            <div class="move-form">
                <form action="" v-on:submit="moveNode($event,'category')">
                    <input type="hidden" v-model="node_id" value="{{$category->id}}">
                    移动到
                    <select  name="target_id" v-model="target_id" >
                        @forelse($categories as $category)
                            <option value="{{$category->id}}">{{$category->name}}</option>
                            @if($children = $category->children and $children->count() > 0)
                                @include('admin.layouts.treeChildren_select',[$children,isset($category_edit)?$category_edit:''])
                            @endif
                        @empty

                        @endforelse
                    </select>
                    <select  name="position" v-model="position">
                        <option value="before">前面</option>
                        <option value="after">后面</option>
                    </select>

                    <button type="submit" class="btn btn-success btn-sm" style="margin-left: 15px" >确定</button>
                </form>
            </div>
        </div>
    </div>

</td>