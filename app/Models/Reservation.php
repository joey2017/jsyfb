<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Reservation
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation query()
 * @mixin \Eloquent
 */
class Reservation extends Model
{
    //
    protected $table = 'jyfb_service_reservation';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
