<?php

namespace App\Models;

use App\Models\Region\Area;
use App\Models\Region\City;
use App\Models\Region\Province;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Specialist
 *
 * @property int $id
 * @property int|null $user_id 用户id
 * @property string|null $receiver 收货人
 * @property string|null $receiver_mobile 收货人手机号码
 * @property string|null $province 省份
 * @property string|null $city 城市
 * @property string|null $district 区县
 * @property string|null $address 详细地址
 * @property int|null $status 状态：0禁用1正常
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress whereCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress whereDistrict($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress whereProvince($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress whereReceiver($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress whereReceiverMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserAddress query()
 * @mixin \Eloquent
 */
class UserAddress extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_user_address';

    /**
     * @var array
     */
    protected $fillable = [
        'receiver', 'receiver_mobile', 'province', 'city', 'district', 'address', 'user_id'
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
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function provinceName()
    {
        return $this->belongsTo(Province::class, 'province', 'code')->select('code', 'province_name');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function cityName()
    {
        return $this->belongsTo(City::class, 'city', 'code')->select('code', 'city_name');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function areaName()
    {
        return $this->belongsTo(Area::class, 'district', 'code')->select('code', 'area_name');
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
