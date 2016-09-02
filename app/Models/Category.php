<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Services\TreeServiceTrait;

class Category extends Model
{
    use SoftDeletes;
    use TreeServiceTrait;
    protected $dates = ['deleted_at'];

    protected $fillable = ['name','desc','link','type','order','depth','parent_id'];


    public function posts(){
        return $this->morphedByMany('App\Models\Post','categoryable','categoryable')->withPivot('id');
    }

    public function menus(){
        return $this->hasMany('App\Models\Menu');
    }


}

