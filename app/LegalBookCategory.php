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
}
