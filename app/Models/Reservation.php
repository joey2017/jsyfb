<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    //
    protected $table = 'jyfb_service_reservation';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
