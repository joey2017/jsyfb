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
