<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserAddress extends Model
{
    //
    protected $table = 'jyfb_user_address';

    protected $fillable = [
        'receiver','receiver_mobile','province','city','district','address','user_id'
    ];

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status):string
    {
        switch ($status)
        {
            case self::INVALID:
                return '禁用';
            case self::NORMAL:
                return '正常';
            default:
                return '正常';
        }
    }
}
