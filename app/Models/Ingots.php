<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Ingots
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots query()
 * @mixin \Eloquent
 */
class Ingots extends Model
{
    //
    protected $table = 'jyfb_ingots';

    //TODO;
    // 状态
    public static $_statuses = ['禁用', '正常'];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
