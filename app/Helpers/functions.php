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

if (!function_exists('isCreditNo')) {
    function isCreditNo($vStr)
    {
        $vCity = array('11', '12', '13', '14', '15', '21', '22', '23',
                       '31', '32', '33', '34', '35', '36', '37', '41', '42', '43',
                       '44', '45', '46', '50', '51', '52', '53', '54', '61', '62',
                       '63', '64', '65', '71', '81', '82', '91'
        );
        if (!preg_match('/^([\d]{17}[xX\d]|[\d]{15})$/', $vStr)) return false;
        if (!in_array(substr($vStr, 0, 2), $vCity)) return false;
        $vStr    = preg_replace('/[xX]$/i', 'a', $vStr);
        $vLength = strlen($vStr);
        if ($vLength == 18) {
            $vBirthday = substr($vStr, 6, 4) . '-' .
                substr($vStr, 10, 2) . '-' . substr($vStr, 12, 2);
        } else {
            $vBirthday = '19' . substr($vStr, 6, 2) . '-' .
                substr($vStr, 8, 2) . '-' . substr($vStr, 10, 2);
        }
        if (date('Y-m-d', strtotime($vBirthday)) != $vBirthday) return false;
        if ($vLength == 18) {
            $vSum = 0;
            for ($i = 17; $i >= 0; $i--) {
                $vSubStr = substr($vStr, 17 - $i, 1);
                $vSum    += (pow(2, $i) % 11) * (($vSubStr == 'a') ? 10 : intval($vSubStr, 11));
            }
            if ($vSum % 11 != 1) return false;
        }
        return true;
    }
}


/** 调试函数
 * @param $model
 */
function dda($model)
{
    if (method_exists($model, 'toArray')) {
        dd($model->toArray());
    } else {
        dd($model);
    }
}