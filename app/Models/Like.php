<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Like extends Model
{
    use SoftDeletes;
    public function likeable()
    {
        return $this->morphTo();
    }

    public function user(){
        return $this->belongsTo('App\Models\User');
    }
}
