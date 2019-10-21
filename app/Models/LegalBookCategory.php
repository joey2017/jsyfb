<?php

namespace App\Models;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\LegalBookCategory
 *
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\LegalBookCategory[] $children
 * @property-read int|null $children_count
 * @property-read \App\Models\LegalBook $legalBook
 * @property-read \App\Models\LegalBookCategory $parent
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory query()
 * @mixin \Eloquent
 * @property int $id
 * @property string|null $title 主题
 * @property int|null $parent_id 宝典分类id
 * @property string|null $path 路径
 * @property int $order
 * @property string $logo
 * @property string|null $detail 内容详情
 * @property int|null $status 状态：0禁用1正常
 * @property int|null $is_deleted 是否删除：0否1是
 * @property string|null $created_at 购买时间
 * @property string|null $updated_at 更新时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory whereDetail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory whereLogo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory whereOrder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory whereParentId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory wherePath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory whereUpdatedAt($value)
 */
class LegalBookCategory extends Model
{
    use ModelTree, AdminBuilder;

    /**
     * @var string
     */
    protected $table = 'jyfb_legal_book_category';

    /**
     * @var bool
     */
    public $timestamps = false;

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function legalBookSection()
    {
        return $this->hasOne(LegalBookSection::class, 'cate_id');
    }

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status): string
    {
        return self::STATUSES[$status];
    }
}
