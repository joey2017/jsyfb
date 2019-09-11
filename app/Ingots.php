<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ingots extends Model
{
    //
    protected $table = 'jyfb_ingots';

    //TODO;
    // 状态
    public static $_statuses = ['禁用', '正常'];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
