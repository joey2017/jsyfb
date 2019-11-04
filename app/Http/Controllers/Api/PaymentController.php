<?php

namespace App\Http\Controllers\Api;

use App\Models\IngotsLog;
use App\Models\Member;
use App\Models\SystemConfig;
use App\Models\Unifiedorder;
use App\Services\IngotsService;
use App\Services\NoticeService;
use GuzzleHttp\Client;
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
     * @return string
     */
    protected function generateSn()
    {
        return date('Ymd') . substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
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
     *   @SWG\Parameter(name="fee", type="integer", required=true, in="formData", description="订单总金额，单位为元"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function wechatpay(Request $request)
    {
        $fee = $request->input('fee', '') * 100;

        if ($fee <= 0 || !is_numeric($fee) || strpos($fee, ".") !== false) {
            return $this->failed('支付金额须大于0且仅保留2位小数');
        }

        try {
            $order = [
                'out_trade_no' => 'CZ' . $this->generateSn(),
                'body'         => '在家有法宝小程序使用微信钱包支付总金额' . $fee / 100 . '元',
                'total_fee'    => $fee,
                'openid'       => Auth::guard('api')->user()->openid,
            ];

            $unified = [
                'user_id'      => Auth::guard('api')->id(),
                'out_trade_no' => $order['out_trade_no'],
                'description'  => $order['body'],
                'total_fee'    => $order['total_fee'],
                'pay_status'   => 0,
                'openid'       => $order['openid'],
            ];

            Unifiedorder::create($unified);
            $result = Pay::wechat()->miniapp($order);
            return $this->success($result);
            // 返回 Collection 实例。包含了调用 JSAPI 的所有参数，如appId，timeStamp，nonceStr，package，signType，paySign 等；
            // 可直接通过 $result->appId, $result->timeStamp 获取相关值。
        } catch (\Exception $e) {
            Log::error('微信支付失败：' . $e->getMessage(), ['info' => $e->getTraceAsString()]);
        }

    }

    //微信支付回调通知
    public function notify(Request $request)
    {
        $receipt = $_REQUEST;
        if ($receipt == null) {
            $receipt = file_get_contents("php://input");
            if ($receipt == null) {
                $receipt = $GLOBALS['HTTP_RAW_POST_DATA'];
            }
        }
        $pay = Pay::wechat();

        Log::info('微信支付回调通知参数:', ['info' => $request->all(), 'data' => $receipt]);

        try {
            $data = $pay->verify(); // 是的，验签就这么简单！

            $paymentInfo = $data->all();

            $order = Unifiedorder::where('out_trade_no', $paymentInfo['out_trade_no'])->first();

            //校验状态
            if ($order['pay_status'] == Unifiedorder::SUCCESS) {
                return $pay->success();
            }
            //校验订单金额

            //没有收到通知的情况下，建议商户主动调用微信支付【查询订单API】确认订单状态


            // 请自行对 trade_status 进行判断及其它逻辑进行判断，在支付宝的业务通知中，只有交易通知状态为 TRADE_SUCCESS 或 TRADE_FINISHED 时，支付宝才会认定为买家付款成功。
            // 1、商户需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号；
            // 2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额）；
            // 3、验证app_id是否为该商户本身。
            // 4、其它业务逻辑情况


            DB::beginTransaction();
            //更新订单
            $order->pay_status     = Unifiedorder::SUCCESS;
            $order->transaction_id = $paymentInfo['transaction_id'];
            $order->save();
            //发送消息
            $this->notice->add('微信支付成功', '您刚刚使用微信钱包支付了' . ($order['total_fee'] / 100) . '元', Auth::guard('api')->id());

            Log::debug('Wechat notify', $paymentInfo);
        } catch (\Exception $e) {
            DB::rollBack();
            Log::warning('微信支付回调通知验证失败' . $e->getMessage(), ['info' => $e->getTraceAsString()]);
        }
        DB::commit();
        return $pay->success();// laravel 框架中请直接 `return $pay->success()`
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

        if ($ingots != SystemConfig::where('key', 'vip_ingots')->first()->value ?? 0) {
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

}
