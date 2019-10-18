<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Notice
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice query()
 * @mixin \Eloquent
 * @property int $id
 * @property int|null $user_id 用户id
 * @property float|null $score 答题获得总分数
 * @property string|null $date 日期
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerScore whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerScore whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerScore whereScore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerScore whereUserId($value)
 */
class AnswerScore extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_everyday_answer_score';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'score', 'date'];

    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
