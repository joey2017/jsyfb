<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Column extends Model
{
    //
    protected $table = 'jyfb_column';

    // 状态
    public static $_statuses = ['禁用', '正常'];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function legalBookCategory()
    {
        return $this->belongsTo(LegalBookCategory::class,'book_cate_id');
    }
}
