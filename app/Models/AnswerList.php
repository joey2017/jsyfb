<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\AnswerList
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\AnswerList query()
 * @mixin \Eloquent
 */
class AnswerList extends Model
{
    //
    protected $table = 'jyfb_answer_list';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
