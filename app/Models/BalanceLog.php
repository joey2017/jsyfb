<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\BalanceLog
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog query()
 * @mixin \Eloquent
 * @property-read \App\Models\User $user
 */
class BalanceLog extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_balance_log';

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
     * @param int $type
     * @return string
     */
    public static function getTypeName(int $type):string
    {
        switch ($type)
        {
            case 1:
                return '收入';
            case 2:
                return '支出';
            default:
                return '收入';
        }
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
