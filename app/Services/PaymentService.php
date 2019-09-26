<?php

namespace App\Services;

use App\Models\Balance;
use App\Models\BalanceLog;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Yansongda\LaravelPay\Facades\Pay;

class PaymentService
{
    public function update($amount, $descr, $type)
    {
        try {
            DB::transaction(function () use ($amount, $descr, $type) {
                $user = Auth::guard('api')->user();
                $type == 1 ? $user->balance += $amount : $user->balance -= $amount;
                $user->save();

                $balance = Balance::firstOrCreate(['user_id' => $user->id]);
                $type == 1 ? $balance->amount += $amount : $balance->amount -= $amount;
                $balance->save();

                BalanceLog::create([
                    'user_id' => $user->id,
                    'type'    => $type,
                    'cost'    => $amount,
                    'descr'   => $descr,
                ]);
            });
        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
        }

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