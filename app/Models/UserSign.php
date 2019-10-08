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
    /**
     * @var string
     */
    protected $table = 'jyfb_user_sign';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'successive_sign_count', 'count', 'last_sign_time', 'start_time', 'week_count'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
