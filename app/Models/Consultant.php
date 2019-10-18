<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Consultant
 *
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
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereCommentsCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereCompany($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereExpertise($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereLevel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereScore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereSummary($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereTelephone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Consultant whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Consultant extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_consultant';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status): string
    {
        switch ($status) {
            case self::INVALID:
                return self::STATUSES[self::INVALID];
            case self::NORMAL:
                return self::STATUSES[self::NORMAL];
            default:
                return self::STATUSES[self::NORMAL];
        }
    }
}
