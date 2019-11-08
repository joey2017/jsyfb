<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\SpecialistAdviceComment
 *
 * @property int $id
 * @property int|null $advice_id 专家咨询id
 * @property int|null $user_id 用户id
 * @property int|null $service_score 服务评分
 * @property int|null $profession_score 专业评分
 * @property string|null $comment 评论内容
 * @property int|null $is_solve 是否解决：1未解决，2已解决
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdviceComment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdviceComment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdviceComment query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdviceComment whereAdviceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdviceComment whereComment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdviceComment whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdviceComment whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdviceComment whereIsSolve($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdviceComment whereProfessionScore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdviceComment whereServiceScore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdviceComment whereUserId($value)
 * @mixin \Eloquent
 */
class SpecialistAdviceComment extends Model
{
    protected $table = 'jyfb_specialist_advice_comment';

    protected $fillable = ['advice_id', 'service_score', 'profession_score', 'comment', 'is_solve'];
}
