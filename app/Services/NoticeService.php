<?php

namespace App\Services;

use App\Models\Notice;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class NoticeService
{
    /**
     * @param $title
     * @param $content
     */
    public function add($title, $content)
    {
        try {
            Notice::create([
                'user_id' => Auth::guard('api')->id(),
                'cate_id' => 0,
                'title'   => $title,
                'content' => $content,
            ]);
        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：'.$exception->getMessage(),['info' => $exception->getTraceAsString()]);
        }

    }
}