<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Laywer
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer query()
 * @mixin \Eloquent
 */
class Laywer extends Model
{

    protected $table = 'jyfb_laywer';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    public function businessCategory()
    {
        return $this->belongsTo(BusinessCategory::class, 'cate_id');
    }


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