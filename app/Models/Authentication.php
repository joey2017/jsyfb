<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Authentication
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication query()
 * @mixin \Eloquent
 * @property int $id
 * @property int $user_id 用户id
 * @property string $realname 真实姓名
 * @property string $mobile 手机号码
 * @property string|null $email 电子邮箱
 * @property string|null $province 省份
 * @property string|null $city 城市
 * @property string|null $district 区县
 * @property string|null $address 详细地址
 * @property string|null $identity_card 身份证号码
 * @property int|null $sex 性别：0男1女2未知
 * @property string|null $qq qq号
 * @property string|null $birthday 生日
 * @property string|null $front_photo 身份证正面照
 * @property string|null $back_photo 身份证反面照
 * @property string|null $hand_photo 手持身份证照
 * @property string|null $remark 备注
 * @property int $status 状态：0待审核，1审核通过，2审核不通过，3资料不全
 * @property string|null $review_at 审核时间
 * @property string|null $veritied_at 认证通过时间
 * @property \Illuminate\Support\Carbon|null $created_at 提交申请时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereBackPhoto($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereBirthday($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereDistrict($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereFrontPhoto($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereHandPhoto($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereIdentityCard($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereProvince($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereQq($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereRealname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereReviewAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereSex($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Authentication whereVeritiedAt($value)
 */
class Authentication extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_user_authentication';


    /**
     * @var array
     */
    protected $fillable = [
        'user_id', 'realname', 'mobile', 'identity_card', 'hand_photo', 'remark'
    ];

    const PENDING    = 0;
    const PASSED     = 1;
    const FAILED     = 2;
    const INCOMPLETE = 3;

    const STATUSES = [
        self::PENDING    => '待审核',
        self::PASSED     => '审核通过',
        self::FAILED     => '审核不通过',
        self::INCOMPLETE => '资料不全',
    ];

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
