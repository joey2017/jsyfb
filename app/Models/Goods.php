<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\IngotsLog
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsLog query()
 * @mixin \Eloquent
 */
class Goods extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_goods';

    /**
     * @var array
     */
    protected $fillable = ['goods_name', 'image', 'exchange_price', 'stock'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function goodsAttr()
    {
        return $this->hasMany(GoodsAttr::class);
    }
}
