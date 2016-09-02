<?php

namespace App\Listeners;

use App\Events\UserRegisterValidationPassed;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Mail;

class SendEmailVerification
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
     * @param  UserRegisterValidationPassed  $event
     * @return void
     */
    public function handle(UserRegisterValidationPassed $event)
    {

        try{
        $parameter = $event->request->name.'/'.$event->request->email.'/'.$event->request->password;

        $parameter =Crypt::encrypt($parameter);
        $url =url('/').'/auth/email_verification/check/'.$parameter;
        $time = time()+2*60*60;
        $token = md5($parameter.$time.config('app.APP_KEY'));
        $url = $url.'/'.$time.'/'.$token;
        $to_name = $event->request->name;
        $to_email =   $event->request->email;

       //mail闭包内在Queue的情况下，不能使用Eloquent关系方法，必须在外面接好再传进去
       //为什么在Mail使用queue而不在listener使用的原因是$request对象无法在这里序列化
        Mail::queue('emails.verification', ['user' => $event->request->name,'url'=>$url], function ($m) use ($to_email,$to_name) {
                $m->from('woody@larabase.com', 'LaraBase');
                $m->to($to_email, $to_name)->subject('请激活帐号!');
            });

        }catch (\Exception $e){
            dd($e);
        }

    }


}
