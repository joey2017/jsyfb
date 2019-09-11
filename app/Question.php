<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

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
