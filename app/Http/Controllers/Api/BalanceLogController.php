<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\BalanceLogRequest;
use App\Http\Resources\Api\BalanceLogResource;
use App\Models\BalanceLog;
use App\Services\NoticeService;
use App\Services\PaymentService;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class BalanceLogController extends Controller
{
    protected $payment;

    protected $notice;

    public function __construct(PaymentService $paymentService, NoticeService $noticeService)
    {
        $this->payment = $paymentService;
        $this->notice  = $noticeService;
    }

    /**
     *
     * @SWG\Get(
     *   path="/balance-logs",
     *   summary="钱包余额明细",
     *   tags={"User"},
     *   description="钱包余额明细。",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   produces={"application/json"},
     *   @SWG\Response(response="200", description="成功"),
     *   @SWG\Response(response="401", description="未授权"),
     *   @SWG\Response(response="405", description="访问方式不正确")
     * )
     */
    public function index()
    {
        $logs = BalanceLog::where('user_id', Auth::guard('api')->id())->paginate(5);
        return BalanceLogResource::collection($logs);
    }

    /**
     *
     * @SWG\Post(
     *   path="/balance-logs",
     *   summary="钱包充值",
     *   tags={"User"},
     *   description="微信支付钱包充值",
     *   produces={"application/json"},
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(in="formData",name="amount",type="number",description="金额大小",required=true),
     *   @SWG\Response(response="201", description="成功"),
     *   @SWG\Response(response="401", description="未授权")
     *   @SWG\Response(response="500", description="服务器错误")
     * )
     */
    public function store(BalanceLogRequest $request)
    {
        try {
            DB::beginTransaction();
            $this->payment->wechatpay('用户微信充值', $request->input('amount'), 1);
            $this->notice->add('余额充值', '微信充值成功' . $request->input('amount') . '元', Auth::guard('api')->id());
        } catch (PDOException $exception) {
            DB::rollBack();
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
            return $this->failed('充值失败,请稍后重试', 500);
        }
        DB::commit();
        return $this->setStatusCode('201')->success('充值成功');
    }

}
