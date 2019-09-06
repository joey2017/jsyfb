<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ActicleComment extends Model
{
    //
    protected $table = 'jsyfb_acticle_comment';

    public function acticle()
    {
        return $this->belongsTo(Acticle::class, 'acticle_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
