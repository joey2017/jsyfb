<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Tymon\JWTAuth\Contracts\JWTSubject;

/**
 * App\Models\User
 *
 * @property-read mixed $mobile
 * @property-read \App\Models\Notice $notice
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @property-read int|null $notifications_count
 * @property-write mixed $username
 * @property-read \App\Models\User $user
 * @property-read \App\Models\UserSign $userSign
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User query()
 * @mixin \Eloquent
 * @property int $id
 * @property string $password 登录密码
 * @property string|null $nickname 昵称
 * @property string|null $gender 性别
 * @property string|null $avatar 头像
 * @property string|null $openid openid
 * @property string|null $email 邮箱
 * @property string|null $raw_data 微信用户原始数据
 * @property string|null $session_key 登录状态凭证
 * @property int|null $inviter_id 邀请人id
 * @property string|null $descr 描述
 * @property int $login_num 登陆次数
 * @property string|null $reg_ip 注册ip
 * @property string|null $last_login_ip 上次登录ip
 * @property \Illuminate\Support\Carbon|null $last_login_time 上次登录时间
 * @property int $is_verified 是否认证：0否1是
 * @property float|null $balance 账号钱包余额
 * @property string|null $remember_token 记住我
 * @property int|null $ingots 法宝数量
 * @property float|null $score 答题获得总分数
 * @property string|null $invitation_code 邀请码
 * @property string|null $last_token 上次登录token
 * @property int $is_vip 是否vip会员：0否1是
 * @property int $status 状态：0禁用1正常
 * @property int $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at 注册时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereAvatar($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereBalance($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereDescr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereGender($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereIngots($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereInvitationCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereInviterId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereIsVerified($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereIsVip($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereLastLoginIp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereLastLoginTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereLastToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereLoginNum($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereNickname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereOpenid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereRawData($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereRegIp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereScore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereSessionKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereUsername($value)
 */
class User extends Authenticatable implements JWTSubject
{
    use Notifiable;

    protected $table = 'jyfb_user';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'mobile', 'password', 'invitation_code',
        'reg_ip', 'avatar', 'openid', 'gender', 'inviter_id',
        'status', 'nickname', 'raw_data', 'session_key'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.属性类型转换
     * integer, real，float，double，decimal:<digits>，string，boolean，
     * object，array，collection，date，datetime，timestamp
     *
     * @var array
     */
    /*protected $casts = [
        //'email_verified_at' => 'datetime',
    ];*/

    /**
     * 应该转换为日期格式的属性.
     *
     * @var array
     */
    protected $dates = ['last_login_time'];


    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    // 认证状态
    const UNCERTIFIED = 0;
    const CERTIFIED   = 1;

    const VERIFIEDS = [self::UNCERTIFIED => '否', self::CERTIFIED => '是'];

    public function getJWTIdentifier()
    {
        // TODO: Implement getJWTIdentifier() method.
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        // TODO: Implement getJWTCustomClaims() method.
        return [];
    }


    /*
     * 访问器
     */
    /*
    public function getMobileAttribute($value)
    {
        //return $this->__toString($value);
    }
    */

    /*
    * @param  string  $value
    * @return void
    */
    /*
    public function setUsernameAttribute($value)
    {
        //$this->attributes['username'] = strtolower($value);
    }
    */

    /**
     * 数组中的属性会被展示。
     *
     * @var array
     */
    //protected $visible = ['first_name', 'last_name'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function userSign()
    {
        return $this->hasOne(UserSign::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function notice()
    {
        return $this->hasOne(Notice::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function userIngots()
    {
        return $this->hasOne(Ingots::class);
    }

    /*
     * 用户邀请人
     */
    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'inviter_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function authen()
    {
        return $this->hasOne(Authentication::class);
    }

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName($status): string
    {
        return self::STATUSES[$status];
    }
}
