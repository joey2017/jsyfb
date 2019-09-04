<?php

namespace App;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class LegalBookCategory extends Model
{
    use ModelTree, AdminBuilder;
    //
    protected $table = 'jsyfb_legal_book_category';

    public function cateName()
    {
        //return $this->hasOne('App\LegalBook', 'cate_id');
        return $this->hasOne(LegalBook::class, 'cate_id');
    }
}
