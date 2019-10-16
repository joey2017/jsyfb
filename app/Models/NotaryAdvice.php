<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NotaryAdvice extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_notary_advice';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'notary_id', 'username', 'sex', 'mobile', 'type', 'question'];

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

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
    public function notary()
    {
        return $this->belongsTo(NotaryOffice::class,'notary_id');
    }

    /**
     * @param int $status
     * @return string
     */
    public static function getStatusName(int $status): string
    {
        switch ($status) {
            case self::INVALID:
                return self::STATUSES[self::INVALID];
            case self::NORMAL:
                return self::STATUSES[self::NORMAL];
            default:
                return self::STATUSES[self::NORMAL];
        }
    }
}
