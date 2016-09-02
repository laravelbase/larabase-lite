<?php
namespace Larabase\ACL\Repositories;

use App\Repositories\BaseRepository;
use Larabase\ACL\Models\Permission;

class PermissionRepository extends BaseRepository{

    public function model(){
        return Permission::class;
    }
    
}