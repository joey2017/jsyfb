<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

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
