<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\LegalBookSection
 *
 * @property int $id
 * @property string|null $name 主题
 * @property int|null $cate_id 宝典分类id
 * @property string|null $title 章节标题
 * @property int|null $status 状态：0禁用1正常
 * @property \Illuminate\Support\Carbon|null $created_at 购买时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\LegalBook[] $legalBook
 * @property-read int|null $legal_book_count
 * @property-read \App\Models\LegalBookCategory|null $legalBookCategory
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookSection newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookSection newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookSection query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookSection whereCateId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookSection whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookSection whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookSection whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookSection whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookSection whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookSection whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\LegalBook[] $book
 * @property-read int|null $book_count
 * @property-read \App\Models\LegalBookCategory|null $category
 */
class LegalBookSection extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_legal_book_section';

    /**
     * @var array
     */
    protected $fillable = ['name', 'cate_id', 'title'];

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function category()
    {
        return $this->belongsTo(LegalBookCategory::class, 'cate_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function book()
    {
        return $this->hasMany(LegalBook::class,'section_id');
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
