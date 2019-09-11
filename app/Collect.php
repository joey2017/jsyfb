<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Collect extends Model
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
