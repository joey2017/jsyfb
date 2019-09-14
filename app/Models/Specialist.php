<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Specialist
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist query()
 * @mixin \Eloquent
 */
class Specialist extends Model
{
    //
    protected $table = 'jyfb_specialist';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
