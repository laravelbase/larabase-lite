<?php

namespace App\Http\Controllers\Auth;

use App\Events\UserFirstLogin;
use App\Events\UserRegisterValidationPassed;
use App\Models\User;
use App\Repositories\UserRepository;
use Illuminate\Auth\Events\Attempting;
use Illuminate\Auth\Events\Failed;
use Illuminate\Auth\SessionGuard;
use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\MessageBag;
use Illuminate\Support\ViewErrorBag;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Registration & Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users, as well as the
    | authentication of existing users. By default, this controller uses
    | a simple trait to add these behaviors. Why don't you explore it?
    |
    */

    use AuthenticatesAndRegistersUsers, ThrottlesLogins;

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */

    protected $redirectTo;


    public function __construct(Request $request, UserRepository $userRepository)
    {
        $this->middleware($this->guestMiddleware(), ['except' => 'logout']);
        $this->request = $request;
        $this->redirectTo = url()->previous();
        $this->userRepository=$userRepository;
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
         $validator = Validator::make($data, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
        ]);
        return $validator;
    }

    protected function validateLogin(Request $request)
    {
        $validator = $this->getValidationFactory()->make($request->all(), [
            $this->loginUsername() => 'required', 'password' => 'required',
        ], [], []);
        if ($validator->fails()) {
            $request->session()->flash('login_error', true);
            $this->throwValidationException($request, $validator);
        }
    }

    protected function sendFailedLoginResponse(Request $request,$signal)
        {

            $request->session()->flash('login_error', true);
        if($signal == 0){
            return redirect()->back()
                ->withInput($request->only($this->loginUsername(), 'remember'))
                ->withErrors([
                    $this->loginUsername() => $this->getFailedLoginMessage(),
                ]);
        }elseif($signal == -1){
            $this->request->session()->flash('login_error', true);
            $e_msg =['non_exist'=>'查无此用户,请重新输入!'];
        }elseif($signal == -2){
            $this->request->session()->flash('login_error', true);
            $e_msg =['not_verified'=>'该账号尚未验证！请检查邮箱。'];
        }else{
            $e_msg =[
                $this->loginUsername() => $this->getFailedLoginMessage(),
            ];
        }

            return redirect()->back()
                ->withInput($request->only($this->loginUsername(), 'remember'))
                ->withErrors($e_msg);
    }

    public function login(Request $request)
    {

        $this->validateLogin($request);

        // If the class is using the ThrottlesLogins trait, we can automatically throttle
        // the login attempts for this application. We'll key this by the username and
        // the IP address of the client making these requests into this application.
        $throttles = $this->isUsingThrottlesLoginsTrait();

        if ($throttles && $lockedOut = $this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);

            return $this->sendLockoutResponse($request);
        }
        $signal = $this->attempt(['email' => $request->get('email'), 'password' => $request->get('password'), 'verified' => 1],$request->has('remember'));
        if ($signal == 1) {
            flash('亲爱的,欢迎回来!','girl');

            return $this->handleUserWasAuthenticated($request, $throttles);
        }
        // If the login attempt was unsuccessful we will increment the number of attempts
        // to login and redirect the user back to the login form. Of course, when this
        // user surpasses their maximum number of attempts they will get locked out.
        if ($throttles && ! $lockedOut) {
            $this->incrementLoginAttempts($request);
        }

        return $this->sendFailedLoginResponse($request,$signal);
    }

    public function attempt(array $credentials = [], $remember = false, $login = true)
    {
        event(new Attempting($credentials, $remember, $login));

        if (empty($credentials)) {
        return 0;
        }

        $user = User::where('email',$credentials['email'])->first();


        if(!$user){

            return -1;

        }

        if(!is_null($user) and $user->verified ==0){

            return -2;
        }


        // If an implementation of UserInterface was returned, we'll ask the provider
        // to validate the user against the given credentials, and if they are in
        // fact valid we'll log the users into the application and return true.
        if ($this->hasValidCredentials($user, $credentials)) {
            if ($login) {
                Auth::login($user, $remember);
            }

            return 1;
        }

        // If the authentication attempt fails we will fire an event so that the user
        // may be notified of any suspicious attempts to access their account from
        // an unrecognized user. A developer may listen to this event as needed.
        if ($login) {
            event(new Failed($user, $credentials));
        }

        return 0;
    }

    public function hasValidCredentials($user, $credentials){
        return ! is_null($user) && $this->validateCredentials($user, $credentials);
    }


    public function validateCredentials(User $user, array $credentials)
    {
        $plain = $credentials['password'];

        return Hash::check($plain, $user->password);
    }

    public function register(Request $request)
    {
        $validator = $this->validator($request->all());

        if ($validator->fails()) {
            $request->session()->flash('register_error', true);
            $this->throwValidationException(
                $request, $validator
            );
        }

            event(new UserRegisterValidationPassed($request));

        return view('auth.emailsent',compact('request'));

    }
    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {
        $num = rand(1,config('larabase.avatar_rand'));
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'avatar'=>'/upload/avatars/'.$num.'.jpg'
        ]);
    }

    public function checkEmailVerificationHashed($hashed,$time,$token){

        if(md5($hashed.$time.config('app.APP_KEY')) != $token){
            abort(503);
            return;
        }
        if(time() > $time){
            flash('该链接已经过期，请重新注册！','danger');
            return redirect()->back();
        }
        try {

            $decrypted = Crypt::decrypt($hashed);
            $res = explode('/',$decrypted);
            $data = [
                'name' => $res[0],
                'email' => $res[1],
                'password' => $res[2]
            ];
            $this->registerConfirmed($data);
            flash('LaraBase欢迎你！','girl');
            return redirect('/');
        } catch (DecryptException $e) {
            abort(503);
        }

    }

    public function registerConfirmed($data){
        $user =$this->create($data);
        $user->verified  =1;
        $user->save();
        /*分配角色*/
        $user->assignRole('user');

        if(!$user->login_times){
            event(new UserFirstLogin($user));
        }
        Auth::guard($this->getGuard())->login($user);

        return true;
    }

    public function checkAccountCompletionHashed($id,$hashed,$time,$token){

        if(md5($hashed.$time.config('app.APP_KEY')) != $token){
            abort(503);
            return;
        }
        if(time() > $time){
            flash('该链接已经过期，请重新注册！','danger');
            return redirect('/');
        }
        $user = $this->userRepository->findOrFail($id);

        try {

            $decrypted = Crypt::decrypt($hashed);
            $res = explode('/',$decrypted);
            $data = [
                'email' => $res[1],
                'password' => $res[2]
            ];
            $this->accountCompleteConfirmed($user,$data);
            flash('LaraBase欢迎你！','girl');
            return redirect('/');
        } catch (DecryptException $e) {
            abort(503);
        }
    }

    public function accountCompleteConfirmed($user,$data){
        $user->email = $data['email'];
        $user->password = bcrypt($data['password']);
        $user->save();

        Auth::guard($this->getGuard())->login($user);
        return true;
    }

    public function redirectLogin(){
        return redirect('/');
    }

    public function redirectRegister(){
        return redirect('/');

    }


}
