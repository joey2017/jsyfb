<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\NotaryOfficeComment
 *
 * @property-read \App\Models\NotaryOffice $notaryOffice
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\NotaryOfficeComment query()
 * @mixin \Eloquent
 */
class NotaryOfficeComment extends Model
{
    //
    /**
     * @var string
     */
    protected $table = 'jyfb_notary_office_comment';

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
    public function notaryOffice()
    {
        return $this->belongsTo(NotaryOffice::class, 'office_id');
    }
}
