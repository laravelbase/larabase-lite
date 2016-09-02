<?php

namespace App\Providers;

use Illuminate\Contracts\Events\Dispatcher as DispatcherContract;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        'App\Events\UserRegisterValidationPassed' => [
            'App\Listeners\SendEmailVerification',
        ],

        'App\Events\UserCompleteAccountPassed' => [
            'App\Listeners\SendEmailVerificationOnCompletingAccount',
        ],

        'Illuminate\Auth\Events\Login' => [
            'App\Listeners\logUserLoginTime',
        ],

        'App\Events\UserFirstLogin' => [
            'App\Listeners\greetUser',
            'App\Listeners\SendNotification@notifyOauthOnlyUser'
        ],

        'App\ForumHack\Events\UserCreatedPost'=>[
            'App\Listeners\SendNotification@notifyThreadOwner'
        ],

        'App\ForumHack\Events\UserCreatedThread'=>[
            'App\Listeners\SendNotification@notifyAdminOnThreadCreated',
            'App\Listeners\SendEmail@emailAdminOnThreadCreated'
        ],

        'App\Events\ArticleCommented'=>[
            'App\Listeners\SendNotification@notifyOwnerOnArticleCommented',
        ],

         'App\Events\CommentReplied'=>[
            'App\Listeners\SendNotification@notifyOwnerOnCommentReplied',
        ]
    ];

    /**
     * Register any other events for your application.
     *
     * @param  \Illuminate\Contracts\Events\Dispatcher  $events
     * @return void
     */
    public function boot(DispatcherContract $events)
    {
        parent::boot($events);

        //
    }
}
