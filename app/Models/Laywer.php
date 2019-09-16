<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Laywer
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer query()
 * @mixin \Eloquent
 */
class Laywer extends Model{

    protected $table = 'jyfb_laywer';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}