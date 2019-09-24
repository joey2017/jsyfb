<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Exchange extends Model
{
    //
    protected $table = 'jyfb_exchange';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    public function goods()
    {
        return $this->belongsTo(Goods::class,'goods_id');
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
