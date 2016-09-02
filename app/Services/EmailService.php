<?php
namespace App\Services;

use Illuminate\Support\Facades\Mail;

class EmailService{

    public function sendEmail($view,Array $data,$to_email,$to_name,$subject){

        Mail::queue($view, $data, function ($m) use($to_email,$to_name,$subject){
            $m->from('woody@larabase.com', 'LaraBase');
            $m->to($to_email, $to_name)->subject($subject);
        });
    }
}