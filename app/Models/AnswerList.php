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
    /**
     * @var string
     */
    protected $table = 'jyfb_answer_list';

    // 状态
    /**
     *
     */
    const INVALID = 0;
    /**
     *
     */
    const NORMAL = 1;

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status):string
    {
        switch ($status)
        {
            case self::INVALID:
                return '禁用';
            case self::NORMAL:
                return '正常';
            default:
                return '正常';
        }
    }
}
