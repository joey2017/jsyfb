<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\UserImage
 *
 * @property int $id
 * @property int|null $user_id 用户id
 * @property string|null $path 图片路径
 * @property \Illuminate\Support\Carbon|null $created_at 创建时间
 * @property \Illuminate\Support\Carbon|null $updated_at 更新时间
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserImage newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserImage newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserImage query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserImage whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserImage whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserImage wherePath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserImage whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UserImage whereUserId($value)
 * @mixin \Eloquent
 */
class UserImage extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_user_image';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'path'];
}
