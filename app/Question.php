<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    //
    protected $table = 'jsyfb_hot_question';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
