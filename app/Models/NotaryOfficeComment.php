<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

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
