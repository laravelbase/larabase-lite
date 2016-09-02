<?php
/**
 * Created by PhpStorm.
 * User: tangsi
 * Date: 2016/7/14
 * Time: 21:09
 */

namespace App\Services;


trait TreeServiceTrait
{


    //模型方法和动态属性
    public function hasChildren(){
        if(Self::where('parent_id',$this->id)->count()>0){
            return true;
        }else{
            return false;
        }
    }

    public function getChildren(){
        return Self::where('parent_id',$this->id)->get();
    }

    public function getChildrenCount(){
        return Self::where('parent_id',$this->id)->count();
    }

    public function getParent(){
        return Self::where('id',$this->parent_id)->first();
    }

    public function getDepth(){
        if(!$this->getParent()){
            return 0;
        }
        $depth =1;
        $parent = $this;
        while($parent->getParent()){
           $depth +=1;
           $parent =$parent->getParent();
           $parent->getDepth();
        }
        return $depth;
    }

    //$p =0: 包括自己在内的全部节点
    //$p =1: 不包括自己在内的节点
    //$p =2: 大于自己的节点
    //$p =3: 小于自己的节点
    //$p =4: 大于等于自己的节点
    //$p =5: 小于等于自己的节点
    public function getSiblings($p=1){

        if($p == 0){
            $query = Self::where('parent_id',$this->parent_id);
        }
        elseif($p == 1){
            $query = Self::where('parent_id',$this->parent_id)->where('id','!=',$this->id);
        }
        elseif($p == 2){
            $query = Self::where('parent_id',$this->parent_id)->where('order','>',$this->order);
        }
        elseif($p == 3){
            $query = Self::where('parent_id',$this->parent_id)->where('order','<',$this->order);
        }
        elseif($p == 4){
            $query = Self::where('parent_id',$this->parent_id)->where('order','>=',$this->order);
        }
        elseif($p == 5){
            $query = Self::where('parent_id',$this->parent_id)->where('order','<=',$this->order);
        }

        if($this->collection_id){
            return $query->where('collection_id',$this->collection_id)->get();
        }elseif($this->type){
            return $query->where('type',$this->type)->get();
        }else{
            return $query->get();
        }


    }

    public function isFirst(){
        if($this->order == 1){
            return true;
        }else{
            return false;
        }
    }

    public function isLast(){
        if($this->getSiblings(0)->max('order') == $this->order){
            return true;
        }else{
            return false;
        }
    }

    public function getPrevious(){
        if(!$this->isFirst()){
            return $this->getSiblings(0)->where('order',$this->order-1)->first();
        }else{
            return false;
        }
    }


    public function getNext(){
        if(!$this->isLast()){
            return $this->getSiblings(0)->where('order',$this->order+1)->first();
        }else{
            return false;
        }
    }


}