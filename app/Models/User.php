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
     * @return \Illuminate\Database\Eloquent\Relations\hasMany
     */
    public function notaryOfficeComments()
    {
        return $this->hasMany(NotaryOfficeComment::class, 'user_id');
    }

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName($status): string
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
