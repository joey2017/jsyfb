<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    //
    protected $table = 'jsyfb_service_reservation';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
