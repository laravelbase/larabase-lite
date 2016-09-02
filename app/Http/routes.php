<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

// Authentication Routes...
$this->get('login', 'Auth\AuthController@redirectLogin');
$this->post('login', 'Auth\AuthController@login');
$this->get('logout', 'Auth\AuthController@logout');

// Registration Routes...
$this->get('register', 'Auth\AuthController@redirectRegister');
$this->post('register', 'Auth\AuthController@register');

// Password Reset Routes...
$this->get('password/reset/{token?}', 'Auth\PasswordController@showResetForm');
$this->post('password/email', 'Auth\PasswordController@sendResetLinkEmail');
$this->post('password/reset', 'Auth\PasswordController@reset');

//第三方登录
Route::get('/auth/qq', 'Auth\OAuthController@getQQAuth');

Route::get('/auth/qq/callback', 'Auth\OAuthController@getQQAuthCallback');

Route::get('/auth/github', 'Auth\OAuthController@getGithubAuth');

Route::get('/auth/github/callback', 'Auth\OAuthController@getGithubAuthCallback');


//邮箱验证
Route::get('auth/email_verification/check/{hashed}/{time}/{token}', [
    'as' => 'auth.email_verification.check', 'uses' =>'Auth\AuthController@checkEmailVerificationHashed'
]);

//补全帐号

Route::get('auth/{id}/complete_account/check/{hashed}/{time}/{token}', [
    'as' => 'auth.complete_account.check', 'uses' =>'Auth\AuthController@checkAccountCompletionHashed'
]);

Route::get('/', 'HomeController@index');

Route::get('posts/filter/category/{id}', [
    'as' => 'posts.filter.category', 'uses' =>'HomeController@postsFilterByCategory'
]);

Route::get('/post/{id}', [
    'as' => 'post', 'uses' =>'BlogController@showPost'
]);

Route::get('/comment/{id}/children', [
    'as' => 'comment.children', 'uses' => 'ApiController@getCommentChildren'
]);

Route::get('/collections', [
    'as' => 'collections', 'uses' => 'BlogController@getCollections'
]);

Route::get('/collection/{col_id}/post/{post_id?}', [
    'as' => 'collection.post', 'uses' => 'BlogController@getCollectionsPost'
]);


Route::get('/search', [
    'as' => 'search', 'uses' => 'HomeController@postSearch'
]);

/*需要Auth的前台Api路由*/
Route::group(['middleware' => 'auth'], function() {
    Route::post('/comment', [
        'as' => 'post.comment', 'uses' => 'ApiController@postComment'
    ]);

    Route::get('/delete/comment/{id}', [
        'as' => 'delete.comment', 'uses' => 'ApiController@deleteComment'
    ]);

    Route::get('/like/comment/{id}', [
        'as' => 'like.comment', 'uses' => 'ApiController@toggleCommentLike'
    ]);

    Route::get('/like/post/{id}', [
        'as' => 'like.post', 'uses' => 'ApiController@togglePostLike'
    ]);

});

/*个人中心*/
Route::group(['middleware' => 'auth'], function() {

    Route::get('ucenter', [
        'as' => 'ucenter', 'uses' => 'HomeController@showUCenter'
    ]);

    Route::get('ucenter/notifications', [
        'as' => 'ucenter.notifications', 'uses' => 'HomeController@listUCenterNotifications'
    ]);

    Route::post('ucenter/notifications/delete', [
        'as' => 'ucenter.notifications.delete', 'uses' => 'ApiController@deleteUCenterNotifications'
    ]);

    Route::get('ucenter/favorites', [
        'as' => 'ucenter.favorites', 'uses' => 'HomeController@listUCenterFavorites'
    ]);

    Route::post('ucenter/favorites/unlike', [
        'as' => 'ucenter.favorites.unlike', 'uses' => 'ApiController@unlikePostLikes'
    ]);

    Route::get('ucenter/comments', [
        'as' => 'ucenter.comments', 'uses' => 'HomeController@listUCenterComments'
    ]);

    Route::post('ucenter/comments/delete', [
        'as' => 'ucenter.comments.delete', 'uses' => 'ApiController@deleteComments'
    ]);

    Route::get('ucenter/forum/threads', [
        'as' => 'ucenter.forum.threads', 'uses' => 'HomeController@listUCenterForumThreads'
    ]);

    Route::get('ucenter/profile', [
        'as' => 'ucenter.profile', 'uses' => 'HomeController@showProfile'
    ]);

    Route::post('ucenter/profile/update',[
        'as' => 'update.ucenter.profile', 'uses' => 'HomeController@updateProfile'
    ]);

    Route::get('ucenter/password', [
        'as' => 'ucenter.password', 'uses' => 'HomeController@showUcenterPassword'
    ]);

    Route::post('ucenter/password/update', [
        'as' => 'update.ucenter.password', 'uses' => 'HomeController@updateUcenterPassword'
    ]);

    Route::post('ucenter/avatar/update', [
        'as' => 'update.ucenter.avatar', 'uses' => 'HomeController@updateUcenterAvatar'
    ]);

    Route::get('ucenter/avatar/change', [
        'as' => 'change.ucenter.avatar', 'uses' => 'ApiController@changeAvatar'
    ]);


    Route::get('ucenter/account/complete',[
        'as' => 'show.ucenter.account.complete', 'uses' => 'HomeController@showAccountComplete'
    ]);

    Route::post('ucenter/account/complete',[
        'as' => 'complete.ucenter.account', 'uses' => 'HomeController@completeAccount'
    ]);
});

