<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\LegalBook
 *
 * @property-read \App\Models\LegalBookCategory $legalBookCategory
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook query()
 * @mixin \Eloquent
 */
class LegalBook extends Model
{
    //
    protected $table = 'jyfb_legal_book';

    public function legalBookCategory()
    {
        return $this->belongsTo(LegalBookCategory::class,'cate_id');
    }
}
