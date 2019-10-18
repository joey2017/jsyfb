<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\WechatAttention
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention query()
 * @mixin \Eloquent
 * @property int $id
 * @property int|null $user_id 用户id
 * @property string|null $username 用户名
 * @property string|null $nickname 昵称
 * @property string|null $wxid 微信id
 * @property string|null $avatar 微信头像
 * @property string|null $province 省份
 * @property string|null $city 城市
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention whereAvatar($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention whereCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention whereNickname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention whereProvince($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention whereUsername($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\WechatAttention whereWxid($value)
 */
class WechatAttention extends Model
{
    //
    protected $table = 'jyfb_wechat_attention';
}
