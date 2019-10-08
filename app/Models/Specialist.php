<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Specialist
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist query()
 * @mixin \Eloquent
 */
class Specialist extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_specialist';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status): string
    {
        switch ($status) {
            case self::INVALID:
                return self::STATUSES[self::INVALID];
            case self::NORMAL:
                return self::STATUSES[self::NORMAL];
            default:
                return self::STATUSES[self::NORMAL];
        }
    }
}
