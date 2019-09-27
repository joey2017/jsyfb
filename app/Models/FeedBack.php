<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class FeedBack
 * @package App\Models
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
    protected $fillable = ['user_id', 'content', 'created_at'];

    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
