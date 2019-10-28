<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Specialist
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist query()
 * @mixin \Eloquent
 * @property int $id
 * @property string $name 姓名
 * @property int|null $level 等级
 * @property string|null $title 职务、头衔
 * @property string|null $expertise 擅长业务
 * @property string|null $mobile 手机号码
 * @property string|null $telephone 固定电话
 * @property string|null $company 单位名称
 * @property int|null $comments_count 评论总数
 * @property float|null $score 服务平均分
 * @property string|null $summary 描述
 * @property int|null $status 状态：0禁用1正常
 * @property int|null $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereCommentsCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereCompany($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereExpertise($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereLevel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereScore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereSummary($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereTelephone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Specialist whereUpdatedAt($value)
 */
class Specialist extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_specialist';

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
