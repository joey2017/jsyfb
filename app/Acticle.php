<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Acticle extends Model
{
    protected $table = 'jsyfb_hot_acticle';

    // 状态
    public static $_statuses = ['禁用', '正常'];

    public function acticleComments()
    {
        return $this->hasMany(ActicleComment::class,'acticle_id');
    }

    public function specialist()
    {
        return $this->belongsTo(Specialist::class,'spec_id');
    }
}
