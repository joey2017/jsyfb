<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Acticle extends Model
{
    protected $table = 'jsyfb_hot_acticle';

    public function acticlecomments()
    {
        return $this->hasMany(ActicleComment::class,'acticle_id');
    }
}
