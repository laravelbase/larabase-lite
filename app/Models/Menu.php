<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Services\TreeServiceTrait;

class Menu extends Model
{
    use SoftDeletes;
    use TreeServiceTrait;

    public function category(){
        return $this->belongsTo('App\Models\Category');
    }

}
