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
 * @property int $id
 * @property int|null $admin_id 发布者id
 * @property string|null $title 标题
 * @property string|null $content 内容
 * @property string|null $images 缩略图/封面图
 * @property int|null $browse_count 浏览次数
 * @property int|null $like_count 点赞数
 * @property int|null $share_count 分享次数
 * @property int $status 状态：0禁用1正常
 * @property int $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at 注册时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @property-read \Encore\Admin\Auth\Database\Administrator|null $adminer
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereAdminId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereBrowseCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereImages($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereLikeCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereShareCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Article whereUpdatedAt($value)
 */
class Article extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_article';

    /**
     * @var array
     */
    protected $fillable = [
        'admin_id', 'title', 'content', 'images'
    ];

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function articleComments()
    {
        return $this->hasMany(ArticleComment::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function adminer()
    {
        return $this->belongsTo(config('admin.database.users_model'), 'admin_id');
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
