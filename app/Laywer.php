<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Laywer extends Model{

    protected $table = 'jyfb_laywer';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}