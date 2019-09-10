<?php

namespace App;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class QuestionCategory extends Model
{
    use ModelTree, AdminBuilder;
    //
    protected $table = 'jsyfb_hot_question_category';

    public function question()
    {
        return $this->hasOne(Question::class,'cate_id');
    }
}
