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
 * @property int $id
 * @property int $user_id 用户id
 * @property int $article_id 文章id
 * @property string|null $created_at 创建时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike whereArticleId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike whereUserId($value)
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
