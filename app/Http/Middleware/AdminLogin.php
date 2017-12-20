<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class AdminLogin
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

    	if(!Auth::guard('admin')->check()){
    		//未登录状态
		    return redirect('admin/login');
	    }
        return $next($request);
    }
}
