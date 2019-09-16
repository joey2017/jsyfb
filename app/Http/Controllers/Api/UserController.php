<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\UserRequest;
use App\Http\Resources\Api\UserResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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
        //$result = Auth::guard('web')->attempt(['username' => $request->username,'password' => $request->password]);
        $token = Auth::guard('api')->attempt(['username' => $request->username,'password' => $request->password]);
        if ($token) {
            return $this->setStatusCode(201)->success(['token' => 'bearer '.$token]);
        } else {
            return $this->failed('帐号或密码错误',400);
        }
    }

    //用户退出
    public function logout(){
        Auth::guard('api')->logout();
        return $this->success('退出成功...');
    }

    //返回当前登录用户信息
    public function info(){
        $user = Auth::guard('api')->user();
        return $this->success(new UserResource($user));
    }
}
