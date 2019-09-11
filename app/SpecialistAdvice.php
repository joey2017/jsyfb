<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SpecialistAdvice extends Model
{
    //
    protected $table = 'jyfb_specialist_advice';

    // 状态
    public static $_statuses = ['禁用', '正常'];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function specialist()
    {
        return $this->belongsTo(Specialist::class,'spec_id');
    }
}
