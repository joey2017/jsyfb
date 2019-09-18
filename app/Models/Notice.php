<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Notice
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice query()
 * @mixin \Eloquent
 */
class Notice extends Model
{
    //
    protected $table = 'jyfb_notice';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public static function getStatusName(int $status):string
    {
        switch ($status)
        {
            case self::INVALID:
                return '未读';
            case self::NORMAL:
                return '已读';
            default:
                return '未知';
        }
    }
}
