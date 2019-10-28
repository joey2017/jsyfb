<?php

namespace App\Http\Controllers\Api;

use App\Models\IngotsLog;
use App\Models\Member;
use App\Models\SystemConfig;
use App\Services\IngotsService;
use App\Services\NoticeService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
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
     * @SWG\Post(
     *   path="/payment/wechatpay",
     *   tags={"Misc"},
     *   summary="微信支付接口",
     *   description="微信支付接口",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="fee", type="integer", required=true, in="formData", description="订单总金额，单位为分"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function wechatpay($fee)
    {
        $order = [
            'out_trade_no' => 'CZ' . $this->generateSn(),
            'body'         => '使用微信支付充值法宝，支付总金额' . $fee . '分',
            'total_fee'    => $fee,
            'openid'       => Auth::guard('api')->user()->openid,
        ];
        //$result = Pay::wechat()->mp($order);
        //$result = Pay::wechat()->scan($order);
        //$result = Pay::wechat()->app($order);
        //$result = Pay::wechat()->wap($order);
        //$result = Pay::wechat()->transfer($order);
        $result = Pay::wechat()->miniapp($order);
        // 返回 Collection 实例。包含了调用 JSAPI 的所有参数，如appId，timeStamp，nonceStr，package，signType，paySign 等；
        // 可直接通过 $result->appId, $result->timeStamp 获取相关值。
        // 后续调用不在本文档讨论范围内，请自行参考官方文档。
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
        $ingots = $request->input('quantity', '');

        if ($ingots < 0 || $ingots == '') {
            return $this->failed('支付法宝数量不能为空或小于0');
        }

        if ($ingots != SystemConfig::where('key', 'vip_ingots')->first()->value) {
            return $this->failed('法宝数量与系统设置值不相等');
        };

        try {
            DB::beginTransaction();
            Member::create(['cost' => $ingots, 'user_id' => Auth::guard('api')->id()]);
            $this->ingots->update($ingots, '咨询专属法顾消耗法宝', IngotsLog::TYPE_DECRE, Auth::guard('api')->user());
            $this->notice->add('咨询专属法顾消耗法宝', '咨询专属法顾消耗' . $ingots . '个法宝', Auth::guard('api')->id(), 2);
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('咨询专属法顾支付法宝异常：' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
        }
        DB::commit();
        return $this->created('支付成功');
    }


    //微信支付回调通知
    public function notify()
    {
        $pay = Pay::wechat(config('pay.wechat'));

        try {
            $data = $pay->verify(); // 是的，验签就这么简单！

            Log::debug('Wechat notify', $data->all());
        } catch (\Exception $e) {
            Log::warning('微信支付回调通知验证失败' . $e->getMessage(), ['info' => $e->getTraceAsString()]);
        }

        return $pay->success();// laravel 框架中请直接 `return $pay->success()`
    }
}
