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
        switch ($type) {
            case 1:
                return '收入';
            case 2:
                return '支出';
            default:
                return '收入';
        }
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
