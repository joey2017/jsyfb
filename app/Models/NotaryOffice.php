<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NotaryOffice extends Model
{
    //
    protected $table = 'jyfb_notary_office';

    // 状态
    public static $_statuses = ['禁用', '正常'];

    public function notaryOfficeComments()
    {
        return $this->hasMany(NotaryOfficeComment::class,'office_id');
    }
}
