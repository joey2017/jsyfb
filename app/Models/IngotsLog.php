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
 * @property int $id
 * @property int|null $user_id 用户id
 * @property int|null $cost 数量
 * @property string|null $descr 描述
 * @property int|null $type 类型：1增加2减少
 * @property int $status 状态：0禁用1正常
 * @property int $is_deleted 是否删除：0否1是
 * @property string|null $remark 备注
 * @property \Illuminate\Support\Carbon|null $created_at 添加时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog whereCost($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog whereDescr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog whereUserId($value)
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
     * @param string $status
     * @return string
     */
    public static function getStatusName($status): string
    {
        return self::STATUSES[$status];
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

    /**
     * @return int
     */
    public function getStatus(): int
    {
        return $this->status;
    }
}
