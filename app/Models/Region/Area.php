<?php

namespace App\Models\Region;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Region\Area
 *
 * @property int $AREA_ID 自增列
 * @property string $AREA_CODE 区代码
 * @property string|null $CITY_CODE 父级市代码
 * @property string $AREA_NAME 市名称
 * @property string $SHORT_NAME 简称
 * @property string|null $LNG 经度
 * @property string|null $LAT 纬度
 * @property int|null $SORT 排序
 * @property string|null $GMT_CREATE 创建时间
 * @property string|null $GMT_MODIFIED 修改时间
 * @property string|null $MEMO 备注
 * @property int|null $DATA_STATE 状态
 * @property string|null $TENANT_CODE 租户ID
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereAREACODE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereAREAID($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereAREANAME($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereCITYCODE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereDATASTATE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereGMTCREATE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereGMTMODIFIED($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereLAT($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereLNG($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereMEMO($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereSHORTNAME($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereSORT($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Area whereTENANTCODE($value)
 * @mixin \Eloquent
 */
class Area extends Model
{
    protected $table = 'jyfb_area';
}
