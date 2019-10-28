<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\GoodsAttr
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GoodsAttr newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GoodsAttr newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GoodsAttr query()
 * @mixin \Eloquent
 * @property int $id
 * @property int $goods_id 商品id
 * @property string|null $size 尺寸
 * @property string|null $color 颜色
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GoodsAttr whereColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GoodsAttr whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GoodsAttr whereGoodsId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GoodsAttr whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GoodsAttr whereSize($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GoodsAttr whereUpdatedAt($value)
 */
class GoodsAttr extends Model
{
    protected $table = 'jyfb_goods_attr';
}
