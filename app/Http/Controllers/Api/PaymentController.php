<?php

namespace App\Http\Controllers\Api;

use App\Models\IngotsLog;
use App\Services\IngotsService;
use App\Services\NoticeService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
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
     * @SWG\Post(
     *   path="/payment/ingotspay",
     *   tags={"Misc"},
     *   summary="咨询专属法顾消耗法宝支付接口",
     *   description="咨询专属法顾消耗法宝支付接口",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="quantity", type="integer", required=true, in="formData", description="法宝数量"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function ingotspay(Request $request)
    {
        try {
            $ingots = $request->input('quantity');
            $this->ingots->update($ingots, '咨询专属法顾消耗法宝', IngotsLog::TYPE_DECRE, Auth::guard('api')->user());
            $this->notice->add('咨询专属法顾消耗法宝', '咨询专属法顾消耗' . config('ingots.vip') . '个法宝', Auth::guard('api')->id(), 2);
        } catch (\Exception $exception) {
            Log::error('咨询专属法顾支付法宝异常：'.$exception->getMessage(),['info' => $exception->getTraceAsString()]);
        }

        return $this->created('支付成功');
    }
}
