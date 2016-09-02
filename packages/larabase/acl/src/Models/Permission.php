<?php

namespace Larabase\ACL\Models;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    protected $fillable = ['name','label','domain','domain_label'];
    public function roles()
    {
        return $this->belongsToMany(Role::class);
    }
}