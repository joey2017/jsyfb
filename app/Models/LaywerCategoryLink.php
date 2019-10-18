<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\LaywerCategoryLink
 *
 * @property-read \App\Models\BusinessCategory $category
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LaywerCategoryLink newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LaywerCategoryLink newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\LaywerCategoryLink query()
 * @mixin \Eloquent
 */
class LaywerCategoryLink extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_laywer_category_link';

    /**
     * @var array
     */
    protected $fillable = ['cate_id', 'laywer_id'];

    /**
     * @var bool
     */
    public $timestamps = false;

    public function category()
    {
        return $this->belongsTo(BusinessCategory::class,'cate_id');
    }

}
