<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

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
