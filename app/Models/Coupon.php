<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Coupon
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon query()
 * @mixin \Eloquent
 * @property int $id
 * @property string|null $name 优惠券名称
 * @property int|null $total_num 优惠券发放总数量
 * @property int $distribute 已发放数量
 * @property int|null $num 每人限领张数
 * @property int|null $type 折扣类型：1满减，2满折
 * @property float|null $condition 使用条件
 * @property float|null $amount 面值大小
 * @property string|null $start_time 开始时间
 * @property string|null $end_time 结束时间
 * @property string|null $remark 备注
 * @property int|null $status 状态：0禁用1正常
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereCondition($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereDistribute($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereEndTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereNum($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereStartTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereTotalNum($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereUpdatedAt($value)
 */
class Coupon extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_coupon';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @param string $status
     * @return string
     */
    public static function getStatusName($status): string
    {
        return self::STATUSES[$status];
    }

}
