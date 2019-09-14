<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\UserSign
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign query()
 * @mixin \Eloquent
 */
class UserSign extends Model
{
    //
    protected $table = 'jyfb_user_sign';

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
