<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Exchange
 *
 * @property int $id
 * @property int|null $user_id 用户id
 * @property int|null $goods_id 兑换的商品id
 * @property int|null $ingots 使用法宝数量
 * @property int|null $quantity 兑换商品数量
 * @property int|null $status 状态：0禁用1正常
 * @property string|null $created_at 创建时间
 * @property-read \App\Models\Goods|null $goods
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Exchange newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Exchange newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Exchange query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Exchange whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Exchange whereGoodsId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Exchange whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Exchange whereIngots($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Exchange whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Exchange whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Exchange whereUserId($value)
 * @mixin \Eloquent
 */
class Exchange extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_exchange';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'goods_id', 'ingots', 'quantity', 'created_at'
    ];

    /**
     * @var bool
     */
    public $timestamps = false;

    // 状态
    const INVALID = 0;
    const NORMAL  = 1;

    const STATUSES = [self::INVALID => '禁用', self::NORMAL => '正常'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function goods()
    {
        return $this->belongsTo(Goods::class);
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
