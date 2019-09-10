<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AnswerList extends Model
{
    //
    protected $table = 'jsyfb_answer_list';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
