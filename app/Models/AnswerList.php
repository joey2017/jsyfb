<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AnswerList extends Model
{
    //
    protected $table = 'jyfb_answer_list';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
