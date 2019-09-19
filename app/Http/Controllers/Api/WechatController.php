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
     * @param Request $request
     * @return string
     * @throws \Exception
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
        return $this->wxxcx->getUserInfo($encryptedData, $iv);
    }
}
