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
    /**
     * @var string
     */
    protected $table = 'jyfb_specialist_advice';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    // 分类
    const CATES = [
        '1' => '房地产',
        '2' => '公司诉讼',
        '3' => '婚姻家庭',
        '4' => '医药行业',
        '5' => '劳动关系',
        '6' => '民事纠纷',
        '7' => '刑事案件',
        '8' => '其他',
    ];

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
    public function specialist()
    {
        return $this->belongsTo(Specialist::class, 'spec_id');
    }


    public function laywer()
    {
        return $this->belongsTo(Laywer::class,'spec_id');
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
