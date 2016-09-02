<?php

/*role路由*/
$r->get('/roles', [
    'as' => 'roles', 'uses' => 'AclController@listRoles'
 ]);

$r->get('/role/create', [
    'as' => 'create.role', 'uses' => 'AclController@createRole'
]);

$r->post('/role', [
    'as' => 'post.role', 'uses' => 'AclController@postRole'
]);

$r->get('/role/{id}/edit', [
    'as' => 'edit.role', 'uses' => 'AclController@editRole'
]);

$r->post('/role/{id}', [
    'as' => 'update.role', 'uses' => 'AclController@updateRole'
]);

$r->get('/role/{id}/delete', [
    'as' => 'delete.role', 'uses' => 'AclController@deleteRole'
]);

/*permission路由*/

$r->get('/permissions', [
    'as' => 'permissions', 'uses' => 'AclController@listPermissions'
]);

$r->get('/permission/create', [
    'as' => 'create.permission', 'uses' => 'AclController@createPermission'
]);

$r->post('/permission', [
    'as' => 'post.permission', 'uses' => 'AclController@postPermission'
]);

$r->get('/permission/{id}/edit', [
    'as' => 'edit.permission', 'uses' => 'AclController@editPermission'
]);

$r->post('/permission/{id}', [
    'as' => 'update.permission', 'uses' => 'AclController@updatePermission'
]);

$r->get('/permission/{id}/delete', [
    'as' => 'delete.permission', 'uses' => 'AclController@deletePermission'
]);

/*权限分配路由*/

$r->get('role/{id}/give_permissions', [
    'as' => 'give.permissions', 'uses' => 'AclController@givePermissions'
]);


$r->post('role/{id}/permissions', [
    'as' => 'post.role.permissions', 'uses' => 'AclController@postRolePermissions'
]);