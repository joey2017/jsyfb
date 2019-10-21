<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

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
    public function legalBookCategory()
    {
        return $this->belongsTo(LegalBookCategory::class, 'cate_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function legalBook()
    {
        return $this->hasMany(LegalBook::class,'section_id');
    }
}
