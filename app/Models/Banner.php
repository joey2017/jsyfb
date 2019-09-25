<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Banner
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Banner newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Banner newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Banner query()
 * @mixin \Eloquent
 */
class Banner extends Model
{
    //
    protected $table = 'jyfb_banner';

    // 状态
    public static $_statuses = ['禁用', '正常'];
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
}
