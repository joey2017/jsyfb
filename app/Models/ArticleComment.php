<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\ArticleComment
 *
 * @property int $id
 * @property int|null $laywer_id 律师id
 * @property int|null $article_id 文章id
 * @property string $interpretation 解读
 * @property string $measures 措施
 * @property string|null $content 评论内容
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Article|null $article
 * @property-read \App\Models\Laywer|null $laywer
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment whereArticleId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment whereInterpretation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment whereLaywerId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment whereMeasures($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleComment whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class ArticleComment extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_article_comment';

    /**
     * @var array
     */
    protected $fillable = ['laywer_id', 'article_id', 'interpretation', 'measures', 'content'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function article()
    {
        return $this->belongsTo(Article::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function laywer()
    {
        return $this->belongsTo(Laywer::class);
    }
}
