<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\NotaryOfficeComment
 *
 * @property int $id
 * @property int|null $office_id 公证处id
 * @property int|null $user_id 用户id
 * @property int|null $score 评分
 * @property string|null $content 评论内容
 * @property \Illuminate\Support\Carbon|null $created_at 评论时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @property-read \App\Models\NotaryOffice|null $office
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment whereOfficeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment whereScore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment whereUserId($value)
 * @mixin \Eloquent
 */
class NotaryOfficeComment extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_notary_office_comment';

    /**
     * @var array
     */
    protected $fillable = ['office_id', 'user_id', 'score', 'content'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function office()
    {
        return $this->belongsTo(NotaryOffice::class, 'office_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
