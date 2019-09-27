<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Iwanli\Wxxcx\Wxxcx;

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
        return $this->wxxcx->getUserInfo($encryptedData, $iv);
    }
}
