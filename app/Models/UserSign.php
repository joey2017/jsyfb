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

    protected $fillable = ['user_id', 'successive_sign_count', 'count', 'last_sign_time', 'start_time', 'week_count'];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
