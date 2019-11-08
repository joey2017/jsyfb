<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\AnswerRecord
 *
 * @property-read \App\Models\AnswerList $answerList
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord query()
 * @mixin \Eloquent
 * @property int $id
 * @property int|null $user_id 用户id
 * @property int|null $answer_list_id 问题id
 * @property string|null $date 答题日期
 * @property string|null $question 问题
 * @property string|null $answer 用户答案（A/B/C/D）
 * @property string|null $correct 正确答案（A/B/C/D）
 * @property int|null $score 获得分数
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord whereAnswer($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord whereAnswerListId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord whereCorrect($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord whereQuestion($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord whereScore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord whereUserId($value)
 * @property string|null $option 用户选项（A/B/C/D）
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerRecord whereOption($value)
 */
class AnswerRecord extends Model
{
    //
    /**
     * @var string
     */
    protected $table = 'jyfb_everyday_answer_record';

    /**
     * @var array
     */
    protected $fillable = [
        'user_id', 'answer_list_id', 'date', 'question', 'answer', 'correct', 'score', 'option'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function answerList()
    {
        return $this->belongsTo(AnswerList::class, 'answer_list_id');
    }
}
