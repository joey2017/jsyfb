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
