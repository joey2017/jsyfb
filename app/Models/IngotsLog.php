<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\IngotsLog
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog query()
 * @mixin \Eloquent
 */
class IngotsLog extends Model
{
    //
    /**
     * @var string
     */
    protected $table = 'jyfb_ingots_log';

    protected $fillable = [
        'user_id', 'cost', 'descr', 'type', 'status', 'is_deleted', 'remark'
    ];

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    const TYPE_INCRE = 1;
    const TYPE_DECRE = 2;
    const TYPES = [self::TYPE_INCRE => '收入', self::TYPE_DECRE => '支出'];

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

    /**
     * @param int $type
     * @return string
     */
    public static function getTypeName(int $type): string
    {
        return self::TYPES[$type];
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
