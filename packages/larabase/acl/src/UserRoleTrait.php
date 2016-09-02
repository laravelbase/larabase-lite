<?php

namespace Larabase\ACL;

use Larabase\ACL\Models\Role;
use Larabase\ACL\Models\Permission;

trait UserRoleTrait
{

    public function roles()
    {
        return $this->belongsToMany(Role::class);
    }


    public function assignRole($role)
    {
        return $this->roles()->save(
            Role::whereName($role)->firstOrFail()
        );
    }

    public function attachRole($role)
    {
        return $this->roles()->save($role);
    }

    public function hasRole($role)
    {
        if (is_string($role)) {
            return $this->roles->contains('name', $role);
        }

        return !! $role->intersect($this->roles)->count();
    }

    /**
     * @param Permission $permission
     * @return bool
     * to-do 这里应该加上对字符串的识别
     */
    public function hasPermission(Permission $permission)
    {
        return $this->hasRole($permission->roles);
    }
}