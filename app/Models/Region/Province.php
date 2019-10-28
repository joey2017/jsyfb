<?php

namespace App\Models\Region;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Region\Province
 *
 * @mixin \Eloquent
 * @property int $id 自增列
 * @property string $code 省份代码
 * @property string $province_name 省份名称
 * @property string $short_name 简称
 * @property string|null $lng 经度
 * @property string|null $lat 纬度
 * @property int|null $sort 排序
 * @property int|null $status 状态
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereLat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereLng($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereProvinceName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereShortName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereSort($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereUpdatedAt($value)
 */
class Province extends Model
{
    protected $table = 'jyfb_province';
}
