<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\ArticleLike
 *
 * @property-read \App\Models\Article $hotArticle
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ArticleLike query()
 * @mixin \Eloquent
 */
class ArticleLike extends Model
{
    //
    protected $table = 'jyfb_article_like';

    public $timestamps = false;

    public $fillable = ['user_id','article_id'];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function hotArticle()
    {
        return $this->belongsTo(Article::class,'article_id');
    }
}
