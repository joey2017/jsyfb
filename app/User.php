<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    protected $table = 'jsyfb_user';
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
    protected $casts = [
        //'email_verified_at' => 'datetime',
    ];

    /**
     * 应该转换为日期格式的属性.
     *
     * @var array
     */
    protected $dates = ['last_login_time'];

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
        $this->attributes['username'] = strtolower($value);
    }

    /**
     * 数组中的属性会被展示。
     *
     * @var array
     */
    protected $visible = ['first_name', 'last_name'];
}
