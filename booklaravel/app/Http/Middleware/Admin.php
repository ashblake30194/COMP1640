<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Admin as Middleware;
use Illuminate\Support\Facades\Auth;
use Closure;

class Admin
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
        if (Auth::check() && Auth::user()->roles()->pluck('name')->first() == 'admin') {
            return $next($request);
        }
        elseif (Auth::check() &&Auth::user()->roles()->pluck('name')->first() == 'staff') {
            return redirect('/pages/error');
        }
    }
}
