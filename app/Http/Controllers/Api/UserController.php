<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\UserRequest;
use App\Http\Resources\Api\UserResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;

class UserController extends Controller
{
    //
    public function index()
    {
        $users = User::paginate(3);
        //return $this->success($users);
        //无分页信息
        //return $this->success(UserResource::collection($users));
        return UserResource::collection($users);
    }

    public function show(User $user)
    {
        //return $this->success($user);
        return $this->success(new UserResource($user));
    }

    public function store(UserRequest $userRequest)
    {
        User::create($userRequest->all());
        return $this->setStatusCode(201)->success('用户注册成功');
    }

    public function login(Request $request)
    {

        $token = Auth::guard('api')->attempt(['username' => $request->username, 'password' => $request->password, 'status' => User::NORMAL]);
        if ($token) {
            // 先检查原先是否有存token，有就先失效，再存入新token
            //dd($user = Auth::user());
            $user = Auth::guard('api')->user();
            if ($user->last_token) {
                try {
                    Auth::guard('api')->setToken($user->last_token)->invalidate();
                } catch (TokenExpiredException $e) {
                    //因为让一个过期的token再失效，会抛出异常，所以我们捕捉异常，不需要做任何处理
                }
            }
            $user->last_token = $token;
            $user->save();
            return $this->setStatusCode(201)->success(['token' => 'Bearer ' . $token]);
        } else {
            return $this->failed('帐号或密码错误', 400);
        }
    }

    //用户退出
    public function logout()
    {
        Auth::guard('api')->logout();
        return $this->success('退出成功...');
    }

    //返回当前登录用户信息
    public function info()
    {
        $user = Auth::guard('api')->user();
        return $this->success(new UserResource($user));
    }
}
