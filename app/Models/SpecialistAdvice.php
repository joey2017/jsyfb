<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\SpecialistAdvice
 *
 * @mixin \Eloquent
 * @property int $id
 * @property int $user_id 用户id
 * @property int $spec_id 专家id
 * @property string|null $username 姓名
 * @property int|null $sex 性别:1男2女
 * @property string|null $mobile 联系电话
 * @property int|null $type 案件类型：1房地产2公司诉讼3婚姻家庭4医药行业5劳动关系6民事纠纷7刑事纠纷8其他
 * @property string|null $question 问题描述
 * @property string|null $measures 措施
 * @property int $status 状态：0禁用1正常
 * @property int $is_deleted 是否删除：0否1是
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @property-read \App\Models\Laywer $laywer
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereMeasures($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereQuestion($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereSex($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereSpecId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereUsername($value)
 * @property int $laywer_id 律师或专家id
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice whereLaywerId($value)
 * @property int|null $payment_id 预约支付id
 * @property-read \App\Models\ReservationPayment|null $payment
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice wherePaymentId($value)
 */
class SpecialistAdvice extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_specialist_advice';

    protected $fillable = ['user_id', 'laywer_id', 'username', 'sex', 'mobile', 'type', 'question'];

    // 状态
    const INVALID    = 0;
    const PENDING    = 1;
    const UNEVALUATE = 2;
    const COMPLETED  = 3;

    const STATUSES = [
        self::INVALID    => '禁用',
        self::PENDING    => '进行中',
        self::UNEVALUATE => '待评价',
        self::COMPLETED  => '已完成',
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function laywer()
    {
        return $this->belongsTo(Laywer::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function payment()
    {
        return $this->belongsTo(ReservationPayment::class, 'payment_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function category()
    {
        return $this->belongsTo(BusinessCategory::class, 'type', 'id')->select('id', 'title');
    }

    /**
     * @param string $status
     * @return string
     */
    public static function getStatusName($status): string
    {
        return self::STATUSES[$status];
    }
}
