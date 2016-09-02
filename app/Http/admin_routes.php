<?php

Route::group(['prefix' => 'admin','namespace' => 'Admin'], function()
{

    /*post路由*/
    Route::get('posts', [
        'as' => 'list.posts', 'uses' => 'BlogController@listPosts'
    ]);

    Route::get('posts/status/{status}', [
        'as' => 'filter.posts.status', 'uses' => 'BlogController@filterPostsByStatus'
    ]);

    Route::get('post/create', [
        'as' => 'create.post', 'uses' => 'BlogController@createPost'
    ]);

    Route::post('post/post', [
        'as' => 'post.post', 'uses' => 'BlogController@postPost'
    ]);

    Route::get('post/{id}/edit', [
        'as' => 'edit.post', 'uses' => 'BlogController@editPost'
    ]);

    Route::post('post/{id}/update', [
        'as' => 'update.post', 'uses' => 'BlogController@updatePost'
    ]);

    Route::get('post/{id}/delete', [
        'as' => 'delete.post', 'uses' => 'BlogController@deletePost'
    ]);

    Route::post('posts/delete', [
        'as' => 'delete.posts', 'uses' => 'ApiController@deletePosts'
    ]);

    Route::get('post/{id}/setDraft', [
        'as' => 'set.post.draft', 'uses' => 'BlogController@setDraft'
    ]);

    Route::get('post/{id}/publish',[
        'as' => 'publish.post', 'uses' => 'BlogController@publishPost'
    ]);

    /*collection路由*/
    Route::get('collections', [
        'as' => 'list.collections', 'uses' => 'BlogController@listCollections'
    ]);

    Route::get('collection/create', [
        'as' => 'create.collection', 'uses' => 'BlogController@createCollection'
    ]);

    Route::post('collection/post', [
        'as' => 'post.collection', 'uses' => 'BlogController@postCollection'
    ]);

    Route::get('collection/{id}/edit', [
        'as' => 'edit.collection', 'uses' => 'BlogController@editCollection'
    ]);

    Route::post('collection/{id}/update', [
        'as' => 'update.collection', 'uses' => 'BlogController@updateCollection'
    ]);

    Route::get('collection/{id}/delete', [
        'as' => 'delete.collection', 'uses' => 'BlogController@deleteCollection'
    ]);

    Route::post('collections/delete', [
        'as' => 'delete.collections', 'uses' => 'ApiController@deleteCollections'
    ]);


    /*content路由*/

    Route::get('collection/{col_id}/contents', [
        'as' => 'collection.contents', 'uses' => 'BlogController@getContents'
    ]);

    Route::get('collection/{col_id}/contents_rebuild', [
        'as' => 'rebuild.collection.contents', 'uses' => 'BlogController@rebuildContents'
    ]);

    Route::post('/content/create', [
        'as' => 'post.content', 'uses' => 'BlogController@postContent'
    ]);

    Route::post('/content/{id}/update', [
        'as' => 'update.content', 'uses' => 'BlogController@updateContent'
    ]);

    Route::get('/content/{id}/delete', [
        'as' => 'delete.content', 'uses' => 'BlogController@deleteContent'
    ]);

    Route::get('/collection/{col_id}/content/{c_id}', [
        'as' => 'edit.content', 'uses' => 'BlogController@editContent'
    ]);

    Route::get('/content/{id}/move_up', [
        'as' => 'move_up.content', 'uses' => 'BlogController@moveUpContent'
    ]);

    Route::get('/content/{id}/move_down', [
        'as' => 'move_down.content', 'uses' => 'BlogController@moveDownContent'
    ]);

    Route::get('/content/{c_id}/target/{t_id}/position/{position}', [
        'as' => 'move.content', 'uses' => 'BlogController@moveContentTo'
    ]);


    /*category路由*/

    Route::get('categories', [
        'as' => 'categories', 'uses' => 'BlogController@getCategories'
    ]);

    Route::get('/categories_rebuild', [
        'as' => 'rebuild.categories', 'uses' => 'BlogController@rebuildCategories'
    ]);

    Route::post('/category/create', [
        'as' => 'post.category', 'uses' => 'BlogController@postCategory'
    ]);

    Route::post('/category/{id}/update', [
        'as' => 'update.category', 'uses' => 'BlogController@updateCategory'
    ]);

    Route::get('/category/{id}/delete', [
        'as' => 'delete.category', 'uses' => 'BlogController@deleteCategory'
    ]);

    Route::get('category/{id}', [
        'as' => 'edit.category', 'uses' => 'BlogController@editCategory'
    ]);

    Route::get('/category/{id}/move_up', [
        'as' => 'move_up.category', 'uses' => 'BlogController@moveUpCategory'
    ]);

    Route::get('/category/{id}/move_down', [
        'as' => 'move_down.category', 'uses' => 'BlogController@moveDownCategory'
    ]);

    Route::get('/category/{cat_id}/target/{t_id}/position/{position}', [
        'as' => 'move.category', 'uses' => 'BlogController@moveCategoryTo'
    ]);

});

