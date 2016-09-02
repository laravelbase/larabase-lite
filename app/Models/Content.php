<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Services\TreeServiceTrait;


class Content extends Model
{
    use SoftDeletes;
    use TreeServiceTrait;

    protected $fillable = ['name','desc','link','badge','order','depth','parent_id','collection_id'];
    protected $dates = ['deleted_at'];

    //关系绑定
    public function collection(){
        return $this->belongsTo('App\Models\Collection');
    }

    public function post(){
        return $this->hasOne('App\Models\Post');
    }

    //方法
    public function renderUrl(){
        if($this->link){
            return route('collection.post',[$this->collection()->first()->id,$this->link]);
        }else{
            return '';
        }

    }

}
