<?php
namespace App\Services;


use Fenos\Notifynder\Facades\Notifynder;

class NotificationService{

    public function sendNotification($cat,$from_id,$to_id,$url='',Array $extra=[]){
        Notifynder::category($cat)
            ->from($from_id)
            ->to($to_id)
            ->url($url)
            ->extra($extra)
            ->send();
    }
}