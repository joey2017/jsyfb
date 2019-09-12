<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    //
    protected $table = 'jyfb_notice';

    // 状态
    public static $_statuses = ['未读', '已读'];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
