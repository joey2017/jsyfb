<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Question
 *
 * @property-read \App\Models\QuestionCategory $questionCategory
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question query()
 * @mixin \Eloquent
 */
class Question extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_hot_question';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function questionCategory()
    {
        return $this->belongsTo(QuestionCategory::class, 'cate_id');
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
