<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Article
 *
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\ArticleComment[] $articleComments
 * @property-read int|null $article_comments_count
 * @property-read \App\Models\Specialist $specialist
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article query()
 * @mixin \Eloquent
 */
class Article extends Model
{
    protected $table = 'jyfb_hot_article';

    // 状态
    public static $_statuses = ['禁用', '正常'];

    public function articleComments()
    {
        return $this->hasMany(ArticleComment::class,'article_id');
    }

    public function specialist()
    {
        return $this->belongsTo(Specialist::class,'spec_id');
    }
}
