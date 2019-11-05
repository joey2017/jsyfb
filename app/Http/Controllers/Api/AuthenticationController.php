<?php

namespace App\Http\Controllers\Api;

use function App\Helpers\isCreditNo;
use App\Http\Requests\Api\AuthenticationRequest;
use App\Http\Resources\Api\AuthenticationResource;
use App\Models\Authentication;
use Illuminate\Support\Facades\Auth;

class AuthenticationController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/users/auths",
     *   tags={"User"},
     *   summary="认证详情",
     *   description="认证详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response=200,description="成功"),
     *   @SWG\Response(response=404,description="未找到")
     * )
     */
    public function show()
    {
        if ($authentication = Authentication::where('user_id', Auth::guard('api')->id())->first()) {
            return $this->success(new AuthenticationResource($authentication));
        }
        return $this->success([],'success');
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
     *     @SWG\Parameter(name="hand_photo",in="formData",required=true,description="手持身份证照",type="string"),
     *     @SWG\Response(response=201,description="成功"),
     *     @SWG\Response(response=400,description="失败"),
     *     @SWG\Response(response=403,description="禁止访问"),
     *     @SWG\Response(response=500,description="服务器错误")
     * )
     */
    public function store(AuthenticationRequest $request)
    {
        if (!isCreditNo($request->input('identity_card'))) {
            return $this->failed('身份证号码不正确');
        }
        if (Authentication::where('user_id', Auth::guard('api')->id())->exists()) {
            return $this->failed('您的认证申请已提交，请耐心等待审核结果');
        }
        Authentication::create(array_merge($request->validated(), ['user_id' => Auth::guard('api')->id()]));
        return $this->created('添加成功');
    }

}
