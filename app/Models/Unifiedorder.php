<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Unifiedorder
 *
 * @property int $id
 * @property int|null $user_id 用户ID
 * @property string|null $out_trade_no 商户订单号
 * @property string|null $description 商品描述
 * @property float|null $total_fee 订单总金额
 * @property int|null $pay_status 支付状态：0待支付，1已支付，2已取消
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @property int|null $ingots 法宝数量
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder whereIngots($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder whereOutTradeNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder wherePayStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder whereTotalFee($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Unifiedorder whereUserId($value)
 * @mixin \Eloquent
 */
class Unifiedorder extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_unifiedorder';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'out_trade_no', 'description', 'total_fee', 'ingots', 'pay_status'];

    const PENDING  = 0;
    const SUCCESS  = 1;
    const CANCELED = 2;

    const PAY_STATUSES = [
        self::PENDING  => '待支付',
        self::SUCCESS  => '已支付',
        self::CANCELED => '已取消',
    ];
}
