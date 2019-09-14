<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Balance
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance query()
 * @mixin \Eloquent
 */
class Balance extends Model
{
    //
    protected $table = 'jyfb_balance';

    // 状态
    public static $_statuses = ['禁用', '正常'];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
