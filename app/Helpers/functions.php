<?php

namespace App\Helpers;

use App\Models\Article;
use App\Models\BusinessCategory;
use App\Models\Laywer;
use App\Models\NotaryOffice;
use App\Models\SystemConfig;
use App\Models\User;

if (!function_exists('getAllUsersIdAndNickname')) {
    function getAllUsersIdAndNickname()
    {
        return User::where('status', User::NORMAL)->pluck('nickname', 'id')->toArray();
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
        return Article::where([['status', Article::NORMAL]])->pluck('title', 'id')->toArray();
    }
}

if (!function_exists('getAllLaywersIdAndName')) {
    function getAllLaywersIdAndName()
    {
        return Laywer::where([['status', Laywer::NORMAL]])->pluck('name', 'id')->toArray();
    }
}

if (!function_exists('getAllNotarysIdAndName')) {
    function getAllNotarysIdAndName()
    {
        return NotaryOffice::where([['status', NotaryOffice::NORMAL]])->pluck('name', 'id')->toArray();
    }
}

if (!function_exists('getAllBusinessCategoryIdAndTitle')) {
    function getAllBusinessCategoryIdAndTitle()
    {
        return BusinessCategory::where([['status', BusinessCategory::NORMAL]])->pluck('title', 'id')->toArray();
    }
}

if (!function_exists('getMobileCheckRegex')) {
    function getMobileCheckRegex()
    {
        return '/^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$/';
    }
}
