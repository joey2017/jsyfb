<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use Iwanli\Wxxcx\Wxxcx;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Facades\JWTFactory;

class WechatController extends Controller
{
    protected $wxxcx;

    function __construct(Wxxcx $wxxcx)
    {
        $this->wxxcx = $wxxcx;
    }

    /**
     * @SWG\Post(
     *   path="/getWxUserInfo",
     *   tags={"Misc"},
     *   summary="小程序授权登录接口",
     *   description="小程序授权登录接口",
     *   @SWG\Parameter(name="code", type="string", required=true, in="formData", description="临时登录code"),
     *   @SWG\Parameter(name="encryptedData", type="string", required=true, in="formData", description="加密用户信息"),
     *   @SWG\Parameter(name="iv", type="string", required=true, in="formData", description="iv"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function getWxUserInfo(Request $request)
    {
        //code 在小程序端使用 wx.login 获取
        $code = $request->input('code', '');
        //encryptedData 和 iv 在小程序端使用 wx.getUserInfo 获取
        $encryptedData = $request->input('encryptedData', '');
        $iv            = $request->input('iv', '');

        //根据 code 获取用户 session_key 等信息, 返回用户openid 和 session_key
        $this->wxxcx->getLoginInfo($code);

        //获取解密后的用户信息
        //response()->setStatusCode(201)->json();
        //return $this->wxxcx->getUserInfo($encryptedData, $iv);
        //$token = auth('api')->tokenById($this->createUser($request, json_decode($data))->user()->id);
        $data = json_decode($this->wxxcx->getUserInfo($encryptedData, $iv));

        /*
         * 自定义生成token
        $payload = JWTFactory::make(['openid' => $data->openid]);
        $token = JWTAuth::encode($payload);
        */

        if ($existUser = User::where('openid',$data->openid)->first()) {
            $token = auth('api')->login($existUser);
        } else {
            $token = auth('api')->login($this->createUser($request, $data));
        };
        if ($token) {
            // 先检查原先是否有存token，有就先失效，再存入新token
            $user = auth('api')->user();
            if ($user->last_token) {
                try {
                    auth('api')->setToken($user->last_token)->invalidate();
                } catch (TokenExpiredException $e) {
                    //因为让一个过期的token再失效，会抛出异常，所以我们捕捉异常，不需要做任何处理
                }
            }
            $user->last_token = $token;
            $user->login_num += 1;
            $user->last_login_ip = $request->getClientIp();
            $user->last_login_time = date('Y-m-d H:i:s');
            $user->save();
            return $this->setStatusCode(201)->success(['token' => 'Bearer ' . $token]);
        }
    }

    protected function createUser($request, $data)
    {
        return User::create([
            'username'        => $data->openid,
            'password'        => bcrypt($data->openid),
            'mobile'          => $data->mobile,
            'openid'          => $data->openid,
            'nickname'        => $data->nickname,
            'avatar'          => $data->avatar,
            'gender'          => $data->gender,
            'invitation_code' => substr(uniqid(), 7),
            'reg_ip'          => $request->getClientIp(),
        ]);

    }
}
