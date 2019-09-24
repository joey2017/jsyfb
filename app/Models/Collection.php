<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Collect
 *
 * @property-read \App\Models\Article $hotArticle
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Collection newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Collection newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Collection query()
 * @mixin \Eloquent
 */
class Collection extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_collection';

    // 状态
    const INVALID = 0;
    const NORMAL = 1;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function hotArticle()
    {
        return $this->belongsTo(Article::class,'article_id');
    }

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status):string
    {
        switch ($status)
        {
            case self::INVALID:
                return '禁用';
            case self::NORMAL:
                return '正常';
            default:
                return '正常';
        }
    }
}
