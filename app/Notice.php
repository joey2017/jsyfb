<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    //
    protected $table = 'jyfb_notice';

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
