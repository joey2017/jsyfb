<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Customer
 *
 * @property int $id
 * @property string|null $username 用户名
 * @property string|null $nickname 昵称
 * @property string|null $password 密码
 * @property int $status 状态：0正常，1禁用
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer whereNickname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property string|null $kf_account 客服账号
 * @property int|null $kf_id 客服工号
 * @property string|null $kf_nick 客服昵称
 * @property string|null $kf_wx 微信号
 * @property string|null $kf_headimgurl 头像
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer whereKfAccount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer whereKfHeadimgurl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer whereKfId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer whereKfNick($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Customer whereKfWx($value)
 */
class Customer extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_customer';

    /**
     * @var array
     */
    protected $hidden = ['password'];

    public $fillable = ['kf_account', 'password', 'kf_id', 'kf_nick', 'kf_wx', 'kf_headimgurl'];

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @param string $status
     * @return string
     */
    public static function getStatusName($status): string
    {
        return self::STATUSES[$status];
    }
}
