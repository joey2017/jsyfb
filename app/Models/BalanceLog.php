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
 */
class BalanceLog extends Model
{
    //
    protected $table = 'jyfb_balance_log';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status):string
    {
        switch ($status)
        {
            case self::INVALID:
                return '禁用';
            case self::NORMAL:
                return '正常';
            default:
                return '正常';
        }
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
                return '充值';
            case 2:
                return '支出';
            default:
                return '充值';
        }
    }
}
