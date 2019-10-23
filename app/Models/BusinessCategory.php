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
 * @property int $id
 * @property string|null $title 标题
 * @property string|null $descr 内容描述
 * @property int $status 状态：0禁用1正常
 * @property int $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory whereDescr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory whereUpdatedAt($value)
 */
class BusinessCategory extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_business_category';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @param string $status
     * @return string
     */
    public static function getStatusName($status): string
    {
        return self::STATUSES[$status];
    }
}
