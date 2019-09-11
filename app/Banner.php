<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    //
    protected $table = 'jyfb_banner';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
