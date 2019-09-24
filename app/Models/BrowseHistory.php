<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\BrowseHistory
 *
 * @property-read \App\Models\Article $hotArticle
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory query()
 * @mixin \Eloquent
 */
class BrowseHistory extends Model
{
    //
    protected $table = 'jyfb_browse_history';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function hotArticle()
    {
        return $this->belongsTo(Article::class, 'article_id');
    }

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status): string
    {
        switch ($status) {
            case self::INVALID:
                return '禁用';
            case self::NORMAL:
                return '正常';
            default:
                return '正常';
        }
    }
}
