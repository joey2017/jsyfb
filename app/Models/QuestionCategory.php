<?php

namespace App\Models;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\QuestionCategory
 *
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\QuestionCategory[] $children
 * @property-read int|null $children_count
 * @property-read \App\Models\QuestionCategory $parent
 * @property-read \App\Models\Question $question
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory query()
 * @mixin \Eloquent
 * @property int $id
 * @property string|null $title 主题
 * @property int|null $parent_id 父级id
 * @property string|null $path 路径
 * @property int $order
 * @property string $logo
 * @property int|null $status 状态：0禁用1正常
 * @property int|null $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at 购买时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory whereLogo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory whereOrder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory whereParentId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory wherePath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\QuestionCategory whereUpdatedAt($value)
 */
class QuestionCategory extends Model
{
    use ModelTree, AdminBuilder;

    /**
     * @var string
     */
    protected $table = 'jyfb_hot_question_category';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function question()
    {
        return $this->hasOne(Question::class, 'cate_id');
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
}
