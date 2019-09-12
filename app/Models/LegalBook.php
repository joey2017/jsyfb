<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LegalBook extends Model
{
    //
    protected $table = 'jyfb_legal_book';

    public function legalBookCategory()
    {
        return $this->belongsTo(LegalBookCategory::class,'cate_id');
    }
}
