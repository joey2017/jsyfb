<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

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
