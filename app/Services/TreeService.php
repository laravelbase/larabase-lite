<?php
/**
 * Created by PhpStorm.
 * User: tangsi
 * Date: 2016/7/14
 * Time: 21:02
 */

namespace App\Services;


use Illuminate\Support\Facades\DB;

class TreeService
{

    //parent_id 指定从那一层开始查，默认为0
    public function formatTree($nodes,$parent_id=0,$depth=0){

        $res = $nodes->where('parent_id',$parent_id)->sortBy('order',1);

        $res->map(function($item)use($nodes,$depth){
            $item->depth = $depth;
            $depth++;

            if($this->hasChildren($nodes,$item)){
                $item->children = $this->formatTree($nodes,$item->id,$depth);
            }
        });
        return $res;

    }

    public function hasChildren($nodes,$item){
        $count = $nodes->where('parent_id',$item->id)->count();
        if($count>0){
            return true;
        }else{
            return false;
        }
    }

    public function rebuildTree($nodes,$parent_id=0,$depth=0,$order=1){
        $res = $nodes->where('parent_id',$parent_id);

        $res->each(function($item)use($nodes,$depth,&$order){
            $item->depth = $depth;
            $depth++;
            $item->order = $order;
            $order++;
            $item->save();
            if($item->hasChildren()){
                $item->children = $this->rebuildTree($nodes,$item->id,$depth);
            }
        });
        return $res;
    }
//下面这个方法也可以，不过查询次数更多，放弃
/*    function rebuildTree($nodes,$parent_id=0,$depth=0,$order=1){
        $tree = $this->formatTree($nodes,$parent_id,$depth);
        return $this->makeTreeOrder($tree,$order);
    }

    function makeTreeOrder($tree,$order=1){

        $tree->map(function($t)use(&$order){
            $t->order = $order;
            $order++;
            if($t->hasChildren()){
                $this->makeTreeOrder($t->children);
            }
        });
        return $tree;
    }*/


    public function rebuildChildren($children){
        $children->map(function($item, $key){

            $item->order =$key+1;
            $item->save();
            $key++;
        });
    }

    public function moveUp($node){
       // dd($node->isFirst());
        if($node->isFirst()){
           return false;
        }else{
            $previous = $node->getPrevious();
            $previous->order = $previous->order+1;
            $node->order = $node->order -1;
            $previous->save();
            $node->save();
            return true;
        }
    }

    public function moveDown($node){
        if($node->isLast()){
            return false;
        }else{
            $next = $node->getNext();
            $next->order = $next->order-1;
            $node->order = $node->order+1;
            $next->save();
            $node->save();
            return true;
        }
    }

    public function loopNodesAndIncreaseOrder($nodes){
        $nodes->map(function($item){
            $item->order++;
            $item->save();
        });
    }
    public function loopNodesAndDecreaseOrder($nodes){
        $nodes->map(function($item){
            $item->order--;
            $item->save();
        });
    }

    public function moveTo($node,$target,$position='before'){

        $all_except_self = $node->getSiblings();

        $this->rebuildChildren($all_except_self);

        if($node->parent_id == $target->parent_id){

            $target = $all_except_self->where('id',$target->id)->first();
        }

        if($position=='before'){
            //先让目标的前面腾出一个坑来
            $target_and_target_after = $target->getSiblings(4);
            $this->loopNodesAndIncreaseOrder($target_and_target_after);
              //因为order变了，target要重新获取一下
            $target = $target_and_target_after->where('id',$target->id)->first();
            //最后移动自己填坑
            $node->parent_id = $target->parent_id;
            $node->order = $target->order-1;
            $node->save();
        }elseif($position=='after'){
            //在Target和Target_after之间空出一个位置，Target不变
            $target_after = $target->getSiblings(2);
            $this->loopNodesAndIncreaseOrder($target_after);
            //最后移动自己填坑
            $node->parent_id = $target->parent_id;
            $node->order = $target->order+1;
            $node->save();
        }


    }

    public function deleteNode($node){
        if($node->hasChildren()){
            return false;
        }else{
            if($node->isLast()){
                $node->delete();
                return true;
            }else{
                $all_except_self = $node->getSiblings();
                $this->rebuildChildren($all_except_self);
                $node->delete();
                return true;
            }
        }


    }


}