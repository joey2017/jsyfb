<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\UserSign
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign query()
 * @mixin \Eloquent
 * @property int $id
 * @property int|null $user_id 用户id
 * @property int $successive_sign_count 连续签到次数
 * @property int|null $count 签到总次数
 * @property string|null $last_sign_time 上次签到时间
 * @property string|null $start_time 计算签到开始日期
 * @property int|null $week_count 本周签到次数
 * @property \Illuminate\Support\Carbon|null $created_at 首次签到时间
 * @property \Illuminate\Support\Carbon|null $updated_at 最后修改时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign whereCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign whereLastSignTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign whereStartTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign whereSuccessiveSignCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserSign whereWeekCount($value)
 */
class UserSign extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_user_sign';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'successive_sign_count', 'count', 'last_sign_time', 'start_time', 'week_count'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
