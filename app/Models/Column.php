<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Column
 *
 * @property-read \App\Models\LegalBookCategory $legalBookCategory
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Column newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Column newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Column query()
 * @mixin \Eloquent
 */
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
