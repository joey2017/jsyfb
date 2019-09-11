<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BusinessCategory extends Model
{
    //
    protected $table = 'jsyfb_business_category';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
