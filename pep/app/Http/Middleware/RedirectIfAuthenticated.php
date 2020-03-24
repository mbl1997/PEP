<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
     public function handle($request, Closure $next, $guard = null)
     {
         
        switch ($guard) {
            case 'aluno':
                if (Auth::guard($guard)->check())
                    return redirect('aluno/home');      
                break;

            case 'instrutor':
                if (Auth::guard($guard)->check())
                    return redirect('instrutor/home');      
                break;

            default:
                if (Auth::guard($guard)->check())
                    return redirect('/home');
                break;
             }
         
         return $next($request);

         //  if (Auth::guard($guard)->check())
        //  {
        //      switch ($guard) {
        //          case 'aluno':
        //              return redirect('aluno/home');      
        //              break;
        //          case 'instrutor':
        //              return redirect('instrutor/home');      
        //              break;
        //          default:
        //              return redirect('/home');
        //              break;
        //      }
        //  }
        //  return $next($request);
     }
}
