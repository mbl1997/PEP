<?php

namespace App\Http\Controllers\Instrutor;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = 'instrutor/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest:instrutor')->except('logout');
    }

    // protected function sendLoginResponse(Request $request)
    // {
    //     $request->session()->regenerate();

    //     $this->clearLoginAttempts($request);
    //     foreach ($this->guard()->user()->role as $role) {
    //         if($role->name == 'instrutor'){
    //             return redirect('instrutor/home');
    //         } 
    //     }

    // }

    public function showLoginForm()
    {
        return view('instrutor.login');
    }

    public function guard()
    {
        return Auth::guard('instrutor');
    }
}
