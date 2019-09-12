<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CouponGrant extends Model
{
    //
    protected $table = 'jyfb_coupon_grant';

    // 状态
    public static $_statuses = ['禁用', '正常'];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function coupon()
    {
        return $this->belongsTo(Coupon::class,'coupon_id');
    }
}
