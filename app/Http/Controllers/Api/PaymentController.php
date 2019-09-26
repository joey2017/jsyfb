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
    public function wechatpay($content, $fee, $openid)
    {
        $order = [
            'out_trade_no' => 'CZ'.$this->generateSn(),
            'body'         => $content,
            'total_fee'    => $fee,
            'openid'       => $openid,
        ];
        //$result = Pay::wechat()->mp($order);
        //$result = Pay::wechat()->scan($order);
        //$result = Pay::wechat()->app($order);
        //$result = Pay::wechat()->wap($order);
        //$result = Pay::wechat()->transfer($order);
        $result = Pay::wechat()->miniapp($order);
    }

    public function generateSn()
    {
        return date('Ymd').substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
    }
}
