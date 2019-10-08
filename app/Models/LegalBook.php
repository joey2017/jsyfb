<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\LegalBook
 *
 * @property-read \App\Models\LegalBookCategory $legalBookCategory
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook query()
 * @mixin \Eloquent
 */
class LegalBook extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_legal_book';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function legalBookCategory()
    {
        return $this->belongsTo(LegalBookCategory::class, 'cate_id');
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
