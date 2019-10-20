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
 * @property int $id
 * @property int|null $user_id 用户id
 * @property int|null $quantity 数量
 * @property int $status 状态：0禁用1正常
 * @property int|null $is_deleted 是否删除：0否1是
 * @property string|null $expire_time 到期时间
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots whereExpireTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots whereUserId($value)
 */
class Ingots extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_ingots';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'quantity', 'expire_time'
    ];

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status):string
    {
        return self::STATUSES[$status];
    }
}
