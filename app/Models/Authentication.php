<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Authentication
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication query()
 * @mixin \Eloquent
 */
class Authentication extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_user_authentication';


    /**
     * @var array
     */
    protected $fillable = [
        'user_id', 'realname', 'mobile', 'identity_card', 'hand_photo', 'remark'
    ];

    const PENDING    = 0;
    const PASSED     = 1;
    const FAILED     = 2;
    const INCOMPLETE = 3;

    const STATUSES   = [
        self::PENDING    => '待审核',
        self::PASSED     => '审核通过',
        self::FAILED     => '审核不通过',
        self::INCOMPLETE => '资料不全',
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
