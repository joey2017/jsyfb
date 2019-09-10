<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Specialist extends Model
{
    //
    protected $table = 'jsyfb_specialist';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
