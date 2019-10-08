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
        'user_id', 'answer_list_id', 'date', 'question', 'answer', 'correct', 'score'
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
