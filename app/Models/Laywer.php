<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Laywer
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer query()
 * @mixin \Eloquent
 * @property int $id
 * @property string|null $name 姓名
 * @property string|null $title 头衔
 * @property string|null $mobile 手机号码
 * @property string|null $telephone 固定电话
 * @property string|null $tag 值为specialist等
 * @property string|null $avatar 头像
 * @property string|null $company 单位名称
 * @property string|null $province_code 省份代码
 * @property string|null $city_code 城市代码
 * @property string|null $district_code 区县代码
 * @property string|null $address 详细地址
 * @property string|null $cate_id 律师职务分类
 * @property string|null $expertise 擅长业务
 * @property string|null $summary 职位描述
 * @property int|null $status 状态：0禁用1正常
 * @property int|null $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @property-read \App\Models\BusinessCategory|null $businessCategory
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\LaywerCategoryLink[] $link
 * @property-read int|null $link_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereAvatar($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereCateId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereCityCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereCompany($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereDistrictCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereExpertise($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereProvinceCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereSummary($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereTag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereTelephone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Laywer whereUpdatedAt($value)
 */
class Laywer extends Model
{

    /**
     * @var string
     */
    protected $table = 'jyfb_laywer';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function businessCategory()
    {
        return $this->belongsTo(BusinessCategory::class, 'cate_id');
    }


    public function link()
    {
        return $this->hasMany(LaywerCategoryLink::class);
    }

    /**
     * @param string $status
     * @return string
     */
    public static function getStatusName($status): string
    {
        return self::STATUSES[$status];
    }

    /**
     * @param $cate_id
     */
    public function setCateIdAttribute($cate_id)
    {
        $this->attributes['cate_id'] = trim(implode(',', $cate_id), ',');
    }

}