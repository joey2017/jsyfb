<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\BrowseHistory
 *
 * @property-read \App\Models\Article $article
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory query()
 * @mixin \Eloquent
 */
class BrowseHistory extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_browse_history';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'article_id'];

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

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

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status): string
    {
        switch ($status) {
            case self::INVALID:
                return self::STATUSES[self::INVALID];
            case self::NORMAL:
                return self::STATUSES[self::NORMAL];
            default:
                return self::STATUSES[self::NORMAL];
        }
    }
}
