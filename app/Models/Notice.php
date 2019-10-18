<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Notice
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice query()
 * @mixin \Eloquent
 * @property int $id
 * @property int $user_id 用户id
 * @property int $type 消息分类id：0系统消息，1站内信
 * @property string|null $title 标题
 * @property string|null $content 内容
 * @property int $status 状态：0未读1已读
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Notice whereUserId($value)
 */
class Notice extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_notice';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'type', 'title', 'content'];

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '未读', self::NORMAL => '已读'];

    const TYPES = ['系统消息', '站内信'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
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
