<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Collect
 *
 * @property-read \App\Models\Article $hotArticle
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Collection newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Collection newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Collection query()
 * @mixin \Eloquent
 */
class Collection extends Model
{
    //
    protected $table = 'jyfb_collection';

    // 状态
    public static $_statuses = ['禁用', '正常'];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function hotArticle()
    {
        return $this->belongsTo(Article::class,'article_id');
    }
}
