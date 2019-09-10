<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AnswerRecord extends Model
{
    //
    protected $table = 'jsyfb_everyday_answer_record';

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function answerList()
    {
        return $this->belongsTo(AnswerList::class,'answer_list_id');
    }
}
