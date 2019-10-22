<?php

namespace App\Models\Region;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Region\City
 *
 * @property int $CITY_ID 自增列
 * @property string $CITY_CODE 市代码
 * @property string $CITY_NAME 市名称
 * @property string $SHORT_NAME 简称
 * @property string|null $PROVINCE_CODE 省代码
 * @property string|null $LNG 经度
 * @property string|null $LAT 纬度
 * @property int|null $SORT 排序
 * @property string|null $GMT_CREATE 创建时间
 * @property string|null $GMT_MODIFIED 修改时间
 * @property string|null $MEMO 备注
 * @property int|null $DATA_STATE 状态
 * @property string|null $TENANT_CODE 租户ID
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereCITYCODE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereCITYID($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereCITYNAME($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereDATASTATE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereGMTCREATE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereGMTMODIFIED($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereLAT($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereLNG($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereMEMO($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City wherePROVINCECODE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereSHORTNAME($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereSORT($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\City whereTENANTCODE($value)
 * @mixin \Eloquent
 */
class City extends Model
{
    protected $table = 'jyfb_city';

    protected $fillable = ['CITY_CODE'];
}
