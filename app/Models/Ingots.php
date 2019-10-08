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
        switch ($status)
        {
            case self::INVALID:
                return self::STATUSES[self::INVALID];
            case self::NORMAL:
                return self::STATUSES[self::NORMAL];
            default:
                return self::STATUSES[self::NORMAL];
        }
    }
}
