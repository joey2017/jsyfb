<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\BusinessCategory
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory query()
 * @mixin \Eloquent
 */
class BusinessCategory extends Model
{
    //
    protected $table = 'jyfb_business_category';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

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
}
