<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\CouponGrant
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant query()
 * @mixin \Eloquent
 * @property-read \App\Models\Coupon $coupon
 * @property-read \App\Models\User $user
 * @property int $id
 * @property int|null $user_id 用户id
 * @property int|null $coupon_id 优惠券id
 * @property string|null $name 优惠券名称
 * @property int|null $num 数量
 * @property float|null $amount 面值大小
 * @property float|null $condition 使用条件
 * @property string|null $start_time 开始时间
 * @property string|null $end_time 结束时间
 * @property string|null $remark 备注
 * @property int $status 状态：0禁用1正常
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereCondition($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereCouponId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereEndTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereNum($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereStartTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CouponGrant whereUserId($value)
 */
class CouponGrant extends Model
{
    //
    /**
     * @var string
     */
    protected $table = 'jyfb_coupon_grant';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function coupon()
    {
        return $this->belongsTo(Coupon::class);
    }

    /**
     * @param string $status
     * @return string
     */
    public static function getStatusName($status): string
    {
        return self::STATUSES[$status];
    }
}
