<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\AuthenticationRequest;
use App\Http\Resources\Api\AuthenticationResource;
use App\Models\Authentication;
use App\Models\UserAuthentication;
use Illuminate\Support\Facades\Auth;

class AuthenticationController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/users/auths/{id}",
     *   tags={"User"},
     *   summary="认证详情",
     *   description="认证详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="认证id"),
     *   @SWG\Response(response=200,description="成功"),
     *   @SWG\Response(response=404,description="未找到")
     * )
     */
    public function show(Authentication $authentication)
    {
        if ($authentication->user_id != Auth::guard('api')->id()) {
            return $this->failed('禁止访问', '403');
        }
        return $this->success(new AuthenticationResource($authentication));
    }

    /**
     * @SWG\Post(
     *     path="/users/auths",
     *     summary="新增认证",
     *     tags={"User"},
     *     description="新增认证",
     *     produces={"application/json"},
     *     security={
     *      {
     *          "Bearer":{}
     *      }
     *     },
     *     @SWG\Parameter(name="realname",in="formData",required=true,description="真实姓名",type="string"),
     *     @SWG\Parameter(name="mobile",in="formData",required=true,description="手机号码",type="string"),
     *     @SWG\Parameter(name="identity_card",in="formData",required=true,description="身份证号码",type="string"),
     *     @SWG\Parameter(name="front_photo",in="formData",required=true,description="身份证正面照",type="string"),
     *     @SWG\Parameter(name="back_photo",in="formData",required=true,description="身份证反面照",type="string"),
     *     @SWG\Parameter(name="hand_photo",in="formData",required=true,description="手持身份证照",type="string"),
     *     @SWG\Parameter(name="province",in="formData",required=true,description="省份",type="string"),
     *     @SWG\Parameter(name="city",in="formData",required=true,description="城市",type="string"),
     *     @SWG\Parameter(name="district",in="formData",required=true,description="区县",type="string"),
     *     @SWG\Parameter(name="address",in="formData",required=true,description="地址详情",type="string"),
     *     @SWG\Parameter(name="email",in="formData",required=false,description="邮箱地址",type="string"),
     *     @SWG\Response(response=201,description="成功"),
     *     @SWG\Response(response=403,description="禁止访问"),
     *     @SWG\Response(response=500,description="服务器错误")
     * )
     */
    public function store(AuthenticationRequest $request)
    {
        Authentication::create(array_merge($request->all(),['user_id' => Auth::guard('api')->id()]));
        return $this->setStatusCode(201)->success('添加成功');
    }

}
