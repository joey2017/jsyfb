<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\MessageBag;

class CheckRole
{
    /**
     * 处理传入的参数
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @param  string $role
     * @return mixed
     */
    public function handle($request, Closure $next, $role1, $role2)
    {
        if (!$request->user('admin')->inRoles([$role1, $role2])) {

            $error = new MessageBag([
                'title'   => trans('admin.http_get_failed'),
                'message' => trans('admin.no_permissions'),
            ]);
            return Redirect::back()->with(compact('error'));

        }

        return $next($request);
    }

}