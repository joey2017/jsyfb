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
 * @property int $id
 * @property int|null $user_id 用户id
 * @property int|null $article_id 文章id
 * @property int|null $status 状态：0禁用1正常
 * @property int|null $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory whereArticleId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BrowseHistory whereUserId($value)
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
