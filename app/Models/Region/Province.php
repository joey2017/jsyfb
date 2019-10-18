<?php

namespace App\Models\Region;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Region\Province
 *
 * @property int $PROVINCE_ID 自增列
 * @property string $PROVINCE_CODE 省份代码
 * @property string $PROVINCE_NAME 省份名称
 * @property string $SHORT_NAME 简称
 * @property string|null $LNG 经度
 * @property string|null $LAT 纬度
 * @property int|null $SORT 排序
 * @property string|null $GMT_CREATE 创建时间
 * @property string|null $GMT_MODIFIED 修改时间
 * @property string|null $MEMO 备注
 * @property int|null $DATA_STATE 状态
 * @property string|null $TENANT_CODE 租户ID
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereDATASTATE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereGMTCREATE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereGMTMODIFIED($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereLAT($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereLNG($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereMEMO($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province wherePROVINCECODE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province wherePROVINCEID($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province wherePROVINCENAME($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereSHORTNAME($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereSORT($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Region\Province whereTENANTCODE($value)
 * @mixin \Eloquent
 */
class Province extends Model
{
    protected $table = 'jyfb_province';
}
