<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Balance
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance query()
 * @mixin \Eloquent
 */
class ArticleShare extends Model
{
    //
    /**
     * @var string
     */
    protected $table = 'jyfb_article_share';

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
