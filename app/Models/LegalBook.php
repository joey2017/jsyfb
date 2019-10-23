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
 * @property int $id
 * @property string|null $title 主题
 * @property int|null $section_id 宝典分类id
 * @property string|null $detail 内容
 * @property int|null $status 状态：0禁用1正常
 * @property \Illuminate\Support\Carbon|null $created_at 购买时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook whereCateId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook whereDetail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook whereIsDeleted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook whereUpdatedAt($value)
 * @property-read \App\Models\LegalBookSection|null $legalBookSection
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBook whereSectionId($value)
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
    public function legalBookSection()
    {
        return $this->belongsTo(LegalBookSection::class, 'section_id');
    }

    /**
     * @param string $status
     * @return string
     */
    public static function getStatusName($status): string
    {
        return self::STATUSES[$status];
    }
}
