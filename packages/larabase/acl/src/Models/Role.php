<?php

namespace Larabase\ACL\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $fillable = ['name','label'];

    public function permissions()
    {
        return $this->belongsToMany(Permission::class);
    }

    public function users()
    {
        return $this->belongsToMany(User::class);
    }

    public function hasPermission($permission){
        if($this->permissions()->get()->contains($permission)){
            return true;
        }else{
            return false;
        }
    }

    public function attachPermission(Permission $permission)
    {
        return $this->permissions()->save($permission);
    }
}