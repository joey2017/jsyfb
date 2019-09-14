<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\BrowseHistory
 *
 * @property-read \App\Models\Article $hotArticle
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory query()
 * @mixin \Eloquent
 */
class BrowseHistory extends Model
{
    //
    protected $table = 'jyfb_browse_history';

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
