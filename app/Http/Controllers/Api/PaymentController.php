<?php

namespace App\Http\Controllers\Api;

use App\Models\IngotsLog;
use App\Services\IngotsService;
use App\Services\NoticeService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yansongda\LaravelPay\Facades\Pay;

class PaymentController extends Controller
{
    /**
     * @var IngotsService
     */
    protected $ingots;

    protected $notice;

    /**
     * PaymentController constructor.
     * @param IngotsService $ingotsService
     */
    public function __construct(IngotsService $ingotsService, NoticeService $noticeService)
    {
        $this->ingots = $ingotsService;
        $this->notice = $noticeService;
    }

    /**
     * @param Request $request
     * @return mixed
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
     * @param $content
     * @param $fee
     * @param $openid
     */
    public function wechatpay($content, $fee, $openid)
    {
        $order = [
            'out_trade_no' => 'CZ' . $this->generateSn(),
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

    /**
     * @return string
     */
    public function generateSn()
    {
        return date('Ymd') . substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
    }


    /**
     * @param Request $request
     */
    public function ingotspay(Request $request)
    {
        $ingots = $request->input('quantity');
        $this->ingots->update($ingots, '咨询专属法顾消耗法宝', IngotsLog::TYPE_DECRE, Auth::guard('api')->user());
        $this->notice->add('咨询专属法顾消耗法宝', '咨询专属法顾消耗' . config('ingots.vip') . '个法宝', Auth::guard('api')->id());
    }
}
