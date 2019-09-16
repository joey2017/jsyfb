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
    //
    protected $table = 'jyfb_hot_question_category';

    public function question()
    {
        return $this->hasOne(Question::class,'cate_id');
    }
}
