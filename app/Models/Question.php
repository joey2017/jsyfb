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
    //
    protected $table = 'jyfb_hot_question';

    // 状态
    public static $_statuses = ['禁用', '正常'];

    public function questionCategory()
    {
        return $this->belongsTo(QuestionCategory::class,'cate_id');
    }
}
