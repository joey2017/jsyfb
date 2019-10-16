<?php

namespace App\Helpers;

use App\Models\SystemConfig;
use App\Models\User;

if (!function_exists('getAllUsersIdAndNickname')) {
    function getAllUsersIdAndNickname()
    {
        return User::where('status', 1)->pluck('nickname', 'id')->toArray();
    }
}

if (!function_exists('getSystemConfigByKey')) {
    function getSystemConfigByKey($key) {
        return SystemConfig::firstOrCreate(['key' => $key])->value;
    }
}