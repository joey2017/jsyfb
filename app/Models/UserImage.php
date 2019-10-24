<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserImage extends Model
{
    protected $table = 'jyfb_user_image';

    protected $fillable = ['user_id', 'path'];
}
