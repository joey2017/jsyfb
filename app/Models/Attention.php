<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Balance
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Balance query()
 * @mixin \Eloquent
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
