<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\ArticleLike
 *
 * @property-read \App\Models\Article $article
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike query()
 * @mixin \Eloquent
 */
class ArticleLike extends Model
{

    /**
     * @var string
     */
    protected $table = 'jyfb_article_like';

    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @var array
     */
    public $fillable = ['user_id', 'article_id'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function article()
    {
        return $this->belongsTo(Article::class);
    }
}
