<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\BusinessCategory
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BusinessCategory query()
 * @mixin \Eloquent
 */
class BusinessCategory extends Model
{
    //
    protected $table = 'jyfb_business_category';

    // 状态
    public static $_statuses = ['禁用', '正常'];
}
