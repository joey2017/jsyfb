<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\AnswerList
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList query()
 * @mixin \Eloquent
 * @property int $id
 * @property string|null $title 题目
 * @property string|null $A 选项A
 * @property string|null $B 选项B
 * @property string|null $C 选项C
 * @property string|null $D 选项D
 * @property string|null $correct 正确答案
 * @property int $status 状态：0禁用1正常
 * @property int $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList whereA($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList whereB($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList whereC($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList whereCorrect($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList whereD($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList whereUpdatedAt($value)
 */
class AnswerList extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_answer_list';

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
