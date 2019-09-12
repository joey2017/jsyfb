<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BusinessCategory extends Model
{
    //
    protected $table = 'jyfb_business_category';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
