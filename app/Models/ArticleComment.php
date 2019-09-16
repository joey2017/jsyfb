<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\ArticleComment
 *
 * @property-read \App\Models\Article $article
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment query()
 * @mixin \Eloquent
 */
class ArticleComment extends Model
{
    //
    protected $table = 'jyfb_article_comment';

    public function article()
    {
        return $this->belongsTo(Article::class, 'article_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
