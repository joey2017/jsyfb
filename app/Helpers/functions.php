<?php

namespace App\Helpers;

use App\Models\Article;
use App\Models\Laywer;
use App\Models\SystemConfig;
use App\Models\User;

if (!function_exists('getAllUsersIdAndNickname')) {
    function getAllUsersIdAndNickname()
    {
        return User::where('status', 1)->pluck('nickname', 'id')->toArray();
    }
}

if (!function_exists('getSystemConfigByKey')) {
    function getSystemConfigByKey($key)
    {
        return SystemConfig::firstOrCreate(['key' => $key])->value;
    }
}

if (!function_exists('getAllArticlesIdAndTitle')) {
    function getAllArticlesIdAndTitle()
    {
        return Article::where([['status', 1], ['is_deleted', 0]])->pluck('title', 'id')->toArray();
    }
}

if (!function_exists('getAllLaywersIdAndName')) {
    function getAllLaywersIdAndName()
    {
        return Laywer::where([['status', 1], ['is_deleted', 0]])->pluck('name', 'id')->toArray();
    }
}