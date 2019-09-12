<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ArticleLike extends Model
{
    //
    protected $table = 'jyfb_article_like';

    public $timestamps = false;

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function hotArticle()
    {
        return $this->belongsTo(Article::class,'article_id');
    }
}
