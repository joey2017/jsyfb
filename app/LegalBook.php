<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LegalBook extends Model
{
    //
    protected $table = 'jsyfb_legal_book';

    public function legalBookCategory()
    {
        return $this->belongsTo(LegalBookCategory::class,'cate_id');
    }
}
