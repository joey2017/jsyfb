<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\NotaryOffice
 *
 * @property-read int|null $notary_office_comments_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice query()
 * @mixin \Eloquent
 * @property int $id
 * @property string|null $name 名称
 * @property string|null $mobile 手机号码
 * @property string|null $telephone 固定电话
 * @property string|null $email 电子邮箱
 * @property string|null $wechat 微信号码
 * @property string|null $summary 简介
 * @property int|null $comments_count 评论总数
 * @property float|null $score 服务分
 * @property string|null $province_code 省份
 * @property string|null $city_code 城市
 * @property string|null $district_code 区县
 * @property string|null $address 详细地址
 * @property float|null $lng 经度
 * @property float|null $lat 纬度
 * @property int|null $status 状态：0禁用1正常
 * @property int|null $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereCityCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereCommentsCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereDistrictCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereLat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereLng($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereProvinceCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereScore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereSummary($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereTelephone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice whereWechat($value)
 * @property string|null $picture 图片
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOffice wherePicture($value)
 */
class NotaryOffice extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_notary_office';

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
