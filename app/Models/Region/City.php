<?php

namespace App\Models\Region;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Region\City
 *
 * @mixin \Eloquent
 * @property int $id 自增列
 * @property string $code 市代码
 * @property string $city_name 市名称
 * @property string $short_name 简称
 * @property string|null $province_code 省代码
 * @property string|null $lng 经度
 * @property string|null $lat 纬度
 * @property int|null $sort 排序
 * @property int|null $status 状态
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereCityName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereLat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereLng($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereProvinceCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereShortName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereSort($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City query()
 */
class City extends Model
{
    protected $table = 'jyfb_city';

    protected $fillable = ['code'];
}
