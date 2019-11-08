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
 * @property int $id
 * @property string $goods_name 商品名称
 * @property string|null $image 商品图片
 * @property string|null $detail 商品详情
 * @property int|null $exchange_price 法宝兑换价
 * @property string|null $exchange_rule 兑换规则
 * @property string|null $description 其他描述
 * @property int|null $stock 库存
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Goods whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Goods whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Goods whereDetail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Goods whereExchangePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Goods whereExchangeRule($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Goods whereGoodsName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Goods whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Goods whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Goods whereStock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Goods whereUpdatedAt($value)
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
}
