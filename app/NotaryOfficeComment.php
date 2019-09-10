<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NotaryOfficeComment extends Model
{
    //
    protected $table = 'jsyfb_notary_office_comment';

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function notaryOffice()
    {
        return $this->belongsTo(NotaryOffice::class,'user_id');
    }
}
