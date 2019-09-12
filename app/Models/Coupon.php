<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    //
    protected $table = 'jyfb_coupon';

    // 状态
    public static $_statuses = ['禁用', '正常'];

}
