<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Customer
 *
 * @property int $id
 * @property string|null $nickname 名称
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
 */
class Customer extends Model
{
    protected $table = 'jyfb_customer';
}
