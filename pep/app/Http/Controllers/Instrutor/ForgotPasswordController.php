<?php

namespace App\Http\Controllers\Instrutor;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Support\Facades\Password;

class ForgotPasswordController extends Controller
{
    use SendsPasswordResetEmails;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest:instrutor');
    }

    public function showLinkRequestForm()
    {
        return view('instrutor.passwords.email');
    }

    public function broker()
    {
        return Password::broker('instrutors');
    }
}
