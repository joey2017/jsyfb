<?php

namespace App\Models;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\LegalBookCategory
 *
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\LegalBookCategory[] $children
 * @property-read int|null $children_count
 * @property-read \App\Models\LegalBook $legalBook
 * @property-read \App\Models\LegalBookCategory $parent
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LegalBookCategory query()
 * @mixin \Eloquent
 */
class LegalBookCategory extends Model
{
    use ModelTree, AdminBuilder;
    //
    protected $table = 'jyfb_legal_book_category';

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    public function legalBook()
    {
        //return $this->hasOne('App\LegalBook', 'cate_id');
        return $this->hasOne(LegalBook::class, 'cate_id');
    }

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
