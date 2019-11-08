<?php

namespace App\Models\Region;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Region\Area
 *
 * @mixin \Eloquent
 * @property int $id 自增列
 * @property string $code 区代码
 * @property string|null $city_code 父级市代码
 * @property string $area_name 市名称
 * @property string $short_name 简称
 * @property string|null $lng 经度
 * @property string|null $lat 纬度
 * @property int|null $sort 排序
 * @property int|null $status 状态
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereAreaName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereCityCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereLat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereLng($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereShortName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereSort($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area query()
 */
class Area extends Model
{
    protected $table = 'jyfb_area';
}
