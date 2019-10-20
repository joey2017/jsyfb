<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\NotaryAdvice
 *
 * @property int $id
 * @property int $user_id 用户id
 * @property int|null $notary_id 公证处id
 * @property string|null $username 姓名
 * @property int|null $sex 性别:1男2女
 * @property string|null $mobile 联系电话
 * @property int|null $type 案件类型：1房地产2公司诉讼3婚姻家庭4医药行业5劳动关系6民事纠纷7刑事纠纷8其他
 * @property string|null $question 问题描述
 * @property int $status 状态：0禁用1正常
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 修改时间
 * @property-read \App\Models\NotaryOffice|null $notary
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice whereNotaryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice whereQuestion($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice whereSex($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdvice whereUsername($value)
 * @mixin \Eloquent
 */
class NotaryAdvice extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_notary_advice';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'notary_id', 'username', 'sex', 'mobile', 'type', 'question'];

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

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
    public function notary()
    {
        return $this->belongsTo(NotaryOffice::class,'notary_id');
    }

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status): string
    {
        return self::STATUSES[$status];
    }
}
