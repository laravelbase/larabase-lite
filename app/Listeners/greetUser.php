<?php

namespace App\Listeners;

use App\Events\UserFirstLogin;
use App\Models\User;
use Fenos\Notifynder\Facades\Notifynder;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class greetUser
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  UserFirstLogin  $event
     * @return void
     */
    public function handle(UserFirstLogin $event)
    {
        $from_user = User::whereHas('roles',function($q){
            $q->where('name','admin');
        })->first();
        if($from_user){
            $from_user_id = $from_user->id;
        }

        $to_user_id = $event->user->id;

        Notifynder::category('greet')
            ->from($from_user_id)
            ->to($to_user_id)
            ->send();
    }
}
