<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Ingots
 *
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Ingots query()
 * @mixin \Eloquent
 * @property int $id
 * @property string|null $key
 * @property string|null $value
 * @property string|null $description 描述
 * @property int|null $limitation 每天限制次数，0为不限制
 * @property string|null $icon 图标（全路径图片或者字体图标样式）
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsConfig whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsConfig whereIcon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsConfig whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsConfig whereKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsConfig whereLimitation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\IngotsConfig whereValue($value)
 */
class IngotsConfig extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_ingots_config';

    /**
     * @var array
     */
    protected $fillable = ['key', 'value', 'limitation'];

    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @param $key
     * @return Model|null|object|static
     */
    public static function getConfigByKey($key)
    {
        return self::where('key', $key)->first();
    }
}
