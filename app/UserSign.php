<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserSign extends Model
{
    //
    protected $table = 'jsyfb_user_sign';

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
