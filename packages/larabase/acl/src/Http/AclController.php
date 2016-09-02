<?php

namespace Larabase\ACL\Http;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Larabase\ACL\Repositories\PermissionRepository;
use Larabase\ACL\Repositories\RoleRepository;

class AclController extends Controller
{
    public function __construct(
        RoleRepository $roleRepository,
        PermissionRepository $permissionRepository
    )
    {
        $this->middleware('auth');
        $this->roleRepository = $roleRepository;
        $this->permissionRepository = $permissionRepository;
    }


    /*Role管理*/
    public function listRoles(){
        $roles = $this->roleRepository->all();
        return view('ACL::roles',compact('roles'));
    }

/*    public function createRole(){

    }*/

    public function postRole(Request $request){
        $this->roleRepository->create($request->except('_token'));
        flash('创建角色成功','success');
        return redirect()->back();
    }

    public function editRole($id){
        $roles = $this->roleRepository->all();
        $role_to_update = $this->roleRepository->findOrFail($id);
        return view('ACL::edit_role',compact('roles','role_to_update'));
    }

    public function updateRole(Request $request,$id){

        $this->roleRepository->update($id,$request->except('_token'));
        flash('更新角色成功','success');
        return redirect()->back();
    }

    public function deleteRole($id){
        $this->roleRepository->delete($id);
        flash('删除角色成功','success');
        return redirect()->back();
    }


    /*Permission管理*/
    public function listPermissions(){
        $permissions = $this->permissionRepository->all();
        return view('ACL::permissions',compact('permissions'));
    }

/*    public function createPermission(){

    }*/

    public function postPermission(){
        $this->permissionRepository->create($request->except('_token'));
        flash('创建角色成功','success');
        return redirect()->back();
    }

    public function editPermission($id){
        $permissions = $this->permissionRepository->all();
        $permission_to_update = $this->permissionRepository->findOrFail($id);
        return view('ACL::edit_permission',compact('permissions','permission_to_update'));
    }

    public function updatePermission(Request $request,$id){
        $this->permissionRepository->update($id,$request->except('_token'));
        flash('更新角色成功','success');
        return redirect()->back();
    }

    public function deletePermission($id){
        $this->permissionRepository->delete($id);
        flash('删除角色成功','success');
        return redirect()->back();
    }

    /*分配权限*/

    public function givePermissions($id){

        $role = $this->roleRepository->findOrFail($id);
        $permissions = $this->permissionRepository->all()->groupBy('domain_label');

        return view('ACL::assign_permissions_to_role',compact('permissions','role'));
    }

    public function postRolePermissions(Request $request,$id){
        $permit_ids = $request->get('permissions');
        $role = $this->roleRepository->findOrFail($id);
        $this->roleRepository->syncPermissions($role,$permit_ids);
        flash('保存成功','success');
        return redirect()->back();
    }

}