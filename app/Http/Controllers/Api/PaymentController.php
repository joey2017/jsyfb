<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Yansongda\LaravelPay\Facades\Pay;

class PaymentController extends Controller
{
    /**
     * @param Request $request
     */
    public function alipay(Request $request)
    {

        $order = [
            'out_trade_no' => time(),
            'total_amount' => '1',
            'subject'      => 'test subject - 测试',
        ];
        return Pay::alipay()->web($order);
    }

    /**
     * @param Request $request
     */
    public function wechatpay(Request $request)
    {
        $order = [
            'out_trade_no' => time(),
            'body'         => 'subject-测试',
            'total_fee'    => '1',
            'openid'       => 'onkVf1FjWS5SBIixxxxxxxxx',
        ];
        //$result = Pay::wechat()->mp($order);
        //$result = Pay::wechat()->scan($order);
        //$result = Pay::wechat()->app($order);
        //$result = Pay::wechat()->wap($order);
        //$result = Pay::wechat()->transfer($order);
        $result = Pay::wechat()->miniapp($order);
    }
}
