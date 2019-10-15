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

    /**
     * @var string
     */
    protected $table = 'jyfb_laywer';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function businessCategory()
    {
        return $this->belongsTo(BusinessCategory::class, 'cate_id');
    }

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

    /**
     * @param $cate_id
     */
    public function setCateIdAttribute($cate_id)
    {
        $this->attributes['cate_id'] = trim(implode(',', $cate_id), ',');
    }
}