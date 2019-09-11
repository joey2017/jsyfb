<?php

namespace App\Helpers;

// 检查是否定义，避免冲突
use App\User;

if( ! function_exists('getAllUsersIdAndUsername') ){
    function getAllUsersIdAndUsername(){
        return User::where('status',1)->pluck('username','id')->toArray();
    }
}