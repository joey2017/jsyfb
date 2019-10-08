<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Message
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Message newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Message newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Message query()
 * @mixin \Eloquent
 */
class Message extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_message';

    /**
     * @var array
     */
    protected $fillable = [
        'user_id', 'username', 'mobile', 'content'
    ];

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
