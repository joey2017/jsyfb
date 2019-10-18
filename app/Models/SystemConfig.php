<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\SystemConfig
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SystemConfig newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SystemConfig newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SystemConfig query()
 * @mixin \Eloquent
 * @property int $id
 * @property string|null $key
 * @property string|null $value
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SystemConfig whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SystemConfig whereKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SystemConfig whereValue($value)
 */

class SystemConfig extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_system_config';

    /**
     * @var array
     */
    protected $fillable = ['key', 'value'];

    /**
     * @var bool
     */
    public $timestamps = false;
}
