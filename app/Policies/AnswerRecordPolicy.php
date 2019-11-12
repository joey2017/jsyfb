<?php

namespace App\Policies;

use App\Models\AnswerRecord;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class AnswerRecordPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }


    /**
     * @param User $user
     * @param AnswerRecord $record
     * @return bool
     */
    public function view(User $user, AnswerRecord $record)
    {
        return $user->id === $record->user_id;
    }
}
