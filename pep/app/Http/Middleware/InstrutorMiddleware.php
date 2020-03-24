<?php

namespace App\Http\Middleware;

use Closure;
use Auth;
// use Illuminate\Support\Facades\Auth;

class InstrutorMiddleware
{
    // // public function handle($request, Closure $next, $guard = null)
    // public function handle($request, Closure $next)
    // {
    //     foreach (Auth::user()->role as $key => $role) {
    //         if($role->name == 'instrutor'){
    //             return $next($request);
    //         }
    //     }
    //     return redirect('/');
    // }

    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check())
        {
            switch ($guard) {
                case 'aluno':
                    return redirect('aluno/home');      
                    break;
                case 'instrutor':
                    return redirect('instrutor/home');      
                    break;
                default:
                    return redirect('/home');
                    break;
            }
        }
        return $next($request);
    }
}
