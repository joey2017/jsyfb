<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    //
    protected $table = 'jsyfb_notice';

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
