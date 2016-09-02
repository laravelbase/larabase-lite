<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Collection extends Model
{
    use SoftDeletes;

    protected $fillable = ['name','sub_name','desc','cover_img'];

    protected $casts = [
        'id' => 'string',
    ];

    public function posts(){
        return $this->hasMany('App\Models\Post');
    }

    public function user(){
        return $this->belongsTo('App\Models\User');
    }

    public function category(){
        return $this->belongsTo('App\Models\Category');
    }

    public function contents(){
        return $this->hasMany('App\Models\Content');
    }

    //方法
    public function getFirstPost(){
       $post ='';
        $this->load(['contents'=>function($q)use(&$post){

            if($q->count()>0){
                $post = $q->first()->post;
            }
        }]);

        if($post){
            return $post;
        }else{
            return null;
        }
    }

}
