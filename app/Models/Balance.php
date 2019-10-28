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
 * @property int $id
 * @property int|null $user_id 用户id
 * @property float|null $amount 金额大小
 * @property int $status 状态：0禁用1正常
 * @property int $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance whereUserId($value)
 */
class Balance extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_balance';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];


    /**
     * @param string $status
     * @return string
     */
    public static function getStatusName($status):string
    {
        return self::STATUSES[$status];
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
