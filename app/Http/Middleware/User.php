<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use Session;


use Closure;

class User
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::user()->active != 1)
        {
            Auth::logout();
            $request->session()->forget('key');
            $request->session()->flush();
            Session::flash('message', 'Votre Compte a été désactivé, merci de contacter un admin');
            return redirect('/');
        }
        return $next($request);
    }
}
