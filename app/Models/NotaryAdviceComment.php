<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\NotaryAdviceComment
 *
 * @property int $id
 * @property int|null $advice_id 专家咨询id
 * @property int|null $user_id 用户id
 * @property int|null $service_score 服务评分
 * @property int|null $profession_score 专业评分
 * @property string|null $comment 评论内容
 * @property int|null $is_solve 是否解决：1未解决，2已解决
 * @property string|null $created_at 创建时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdviceComment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdviceComment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdviceComment query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdviceComment whereAdviceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdviceComment whereComment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdviceComment whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdviceComment whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdviceComment whereIsSolve($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdviceComment whereProfessionScore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdviceComment whereServiceScore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryAdviceComment whereUserId($value)
 * @mixin \Eloquent
 */
class NotaryAdviceComment extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_notary_advice_comment';

    /**
     * @var array
     */
    protected $fillable = ['advice_id', 'service_score', 'profession_score', 'comment', 'is_solve'];

    /**
     * @var bool
     */
    public $timestamps = false;
}
