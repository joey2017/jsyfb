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
 */

class IngotsConfig extends Model
{
    //
    protected $table = 'jyfb_ingots_config';

    /**
     * @param $key
     * @return Model|null|object|static
     */
    public static function getConfigByKey($key)
    {
        return self::where('key', $key)->first();
    }
}
