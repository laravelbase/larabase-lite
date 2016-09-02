<?php
namespace Larabase\ACL\Repositories;

use App\Repositories\BaseRepository;
use Larabase\ACL\Models\Role;

class RoleRepository extends BaseRepository{

    public function model(){
        return Role::class;
    }

    public function syncPermissions($role,$permit_ids){
        if(!$permit_ids){
            $permit_ids =[];
        }
        $role->permissions()->sync($permit_ids);
    }

}