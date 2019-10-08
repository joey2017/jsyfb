<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\SpecialistAdvice
 *
 * @property-read \App\Models\Specialist $specialist
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SpecialistAdvice query()
 * @mixin \Eloquent
 */
class SpecialistAdvice extends Model
{
    //
    protected $table = 'jyfb_specialist_advice';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function specialist()
    {
        return $this->belongsTo(Specialist::class,'spec_id');
    }
}
