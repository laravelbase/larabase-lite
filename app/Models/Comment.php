<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Comment extends Model
{
    use SoftDeletes;
    protected $fillable = ['post_id','user_id','body','parent_id'];
    protected $dates = ['deleted_at'];

    public function user(){
        return $this->belongsTo('App\Models\User');
    }

    public function post(){
        return $this->belongsTo('App\Models\Post');
    }

    public function likes()
    {
        return $this->morphMany('App\Models\Like', 'likeable');
    }

    public function getChildren(){
        return Self::where('parent_id',$this->id)->get();
    }

    public function hasChildren(){
         if(Self::where('parent_id',$this->id)->count() >0){
             return true;
         }else{
             return false;
         }
    }

    public function hasParent(){
        if($this->parent_id != 0){
            return true;
        }else{
            return false;
        }
    }

    public function getParent(){
        return Self::findOrFail($this->parent_id);
    }
}
