<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Attention
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention query()
 * @mixin \Eloquent
 * @property int $id
 * @property int|null $user_id 用户id
 * @property int|null $laywer_id 律师id
 * @property string|null $created_at 创建时间
 * @property-read \App\Models\Laywer|null $laywer
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention whereLaywerId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attention whereUserId($value)
 */
class Attention extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_attention';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'laywer_id', 'created_at'];

    /**
     * @var bool
     */
    public $timestamps = false;

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
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
