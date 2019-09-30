<?php

namespace App\Helpers;

// 检查是否定义，避免冲突
use App\Models\User;

if( ! function_exists('getAllUsersIdAndNickname') ){
    function getAllUsersIdAndNickname(){
        return User::where('status',1)->pluck('nickname','id')->toArray();
    }
}