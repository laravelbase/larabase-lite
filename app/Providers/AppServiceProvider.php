<?php

namespace App\Providers;

use Carbon\Carbon;
use Illuminate\Support\Facades\App;
use Illuminate\Support\ServiceProvider;
use Larabase\OauthProviders\QQProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Carbon::setLocale('zh');


        $this->app->make('Laravel\Socialite\Contracts\Factory')->extend('qq', function ($app) {
            $config = $app['config']['services.qq'];
            return new QQProvider(
                $app['request'], $config['client_id'],
                $config['client_secret'], $config['redirect']
            );
        });

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        App::bind('App\Repositories\CommentRepositoryInterface', 'App\Repositories\CommentRepository');
    }
}
