<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
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

    protected $table = 'jyfb_user';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'mobile', 'password', 'invitation_code', 'reg_ip'
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
    public static $_statuses = ['禁用', '正常'];
    const INVALID = 0;
    const NORMAL  = 1;

    /*
     * 访问器
     */
    public function getMobileAttribute($value)
    {
        //return $this->__toString($value);
    }

    /*
    * @param  string  $value
    * @return void
    */
    public function setUsernameAttribute($value)
    {
        //$this->attributes['username'] = strtolower($value);
    }

    /**
     * 数组中的属性会被展示。
     *
     * @var array
     */
    //protected $visible = ['first_name', 'last_name'];


    public function userSign()
    {
        return $this->hasOne(UserSign::class, 'user_id');
    }

    public function notice()
    {
        return $this->hasOne(Notice::class, 'user_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'inviter_id');
    }

    public static function getStatusName(int $status):string
    {
        switch ($status)
        {
            case self::INVALID:
                return '禁用';
            case self::NORMAL:
                return '正常';
            default:
                return '正常';
        }
    }
}
