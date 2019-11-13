<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\ReservationPayment
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ReservationPayment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ReservationPayment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ReservationPayment query()
 * @mixin \Eloquent
 * @property int $id
 * @property int|null $user_id 用户id
 * @property float $cost 消费法宝
 * @property int $status 状态：0禁用1正常
 * @property int $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at 购买时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ReservationPayment whereCost($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ReservationPayment whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ReservationPayment whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ReservationPayment whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ReservationPayment whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ReservationPayment whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ReservationPayment whereUserId($value)
 * @property int $type 类型：1法宝2金钱
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ReservationPayment whereType($value)
 */
class ReservationPayment extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_reservation_payment';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'cost', 'type'];

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    // 类型
    const TYPE_INGOTS = 1;
    const TYPE_MONEY  = 2;

    const TYPES = [self::TYPE_INGOTS => '法宝', self::TYPE_MONEY => '金钱'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * @param string $status
     * @return string
     */
    public static function getStatusName($status): string
    {
        return self::STATUSES[$status];
    }
}