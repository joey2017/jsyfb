<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\BalanceLogResource;
use App\Models\BalanceLog;
use Illuminate\Support\Facades\Auth;

class BalanceLogController extends Controller
{
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
        $logs = BalanceLog::where('user_id',Auth::guard('api')->id())->paginate(5);
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
     * )
     */
    public function store()
    {
        return $this->setStatusCode('201')->success('充值成功');
    }

}
