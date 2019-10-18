<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Reservation
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation query()
 * @mixin \Eloquent
 * @property int $id
 * @property string|null $u_name 客户姓名
 * @property string|null $u_mobile 客户手机号码
 * @property int|null $type 类型：1律师2公证处
 * @property string|null $name 名称
 * @property string|null $mobile 手机号码
 * @property string|null $content 内容描述
 * @property string|null $appointment 约定时间
 * @property int|null $sort 排序
 * @property int|null $status 状态：0禁用1正常
 * @property int|null $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereAppointment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereSort($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereUMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Reservation whereUpdatedAt($value)
 */
class Reservation extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_service_reservation';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    // 类型
    const TYPE_LAYWER = 1;
    const TYPE_NOTARY = 2;

    const TYPES = [self::TYPE_LAYWER => '律师', self::TYPE_NOTARY => '公证处'];

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
