<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\BalanceLog
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog query()
 * @mixin \Eloquent
 * @property-read \App\Models\User $user
 * @property int $id
 * @property int|null $user_id 用户id
 * @property int|null $type 类型：1增加2减少
 * @property float|null $cost 变动金额大小
 * @property string|null $descr 用途描述
 * @property string|null $remark 备注
 * @property int|null $status 状态：0禁用1正常
 * @property int|null $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog whereCost($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog whereDescr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\BalanceLog whereUserId($value)
 */
class BalanceLog extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_balance_log';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @param string $status
     * @return string
     */
    public static function getStatusName($status):string
    {
        return self::STATUSES[$status];
    }

    /**
     * @param int $type
     * @return string
     */
    public static function getTypeName(int $type):string
    {
        switch ($type)
        {
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
