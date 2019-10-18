<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class FeedBack
 *
 * @package App\Models
 * @property int $id
 * @property int|null $user_id 用户id
 * @property string|null $name 用户姓名
 * @property string|null $mobile 手机号码
 * @property string|null $content 内容
 * @property string|null $created_at 创建时间
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FeedBack newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FeedBack newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FeedBack query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FeedBack whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FeedBack whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FeedBack whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FeedBack whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FeedBack whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FeedBack whereUserId($value)
 * @mixin \Eloquent
 */
class FeedBack extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_feedback';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'name', 'mobile', 'content', 'created_at'];

    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
