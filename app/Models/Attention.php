<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Attention
 *
 * @property-read \App\Models\Specialist $specialist
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention query()
 * @mixin \Eloquent
 */
class Attention extends Model
{
    //
    protected $table = 'jyfb_attention';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function specialist()
    {
        return $this->belongsTo(Specialist::class,'spec_id');
    }

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
