<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use App\Repositories\UserRepository;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Socialite;

class OAuthController extends Controller
{
    public function __construct(UserRepository $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    public function getQQAuth(){
        return Socialite::driver('qq')->redirect();
    }

    public function getQQAuthCallback(){
        $oa_user = Socialite::driver('qq')->user();

        return $this->userRepository->LoginOrCreateOAuthUser($oa_user,'qq');
    }

    public function getGithubAuth(){
        return Socialite::driver('github')->redirect();
    }

    public function getGithubAuthCallback(){

        $oa_user = Socialite::driver('github')->stateless()->user();

        return $this->userRepository->LoginOrCreateOAuthUser($oa_user,'github');

    }
}
