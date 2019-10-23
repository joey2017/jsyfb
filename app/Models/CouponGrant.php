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
