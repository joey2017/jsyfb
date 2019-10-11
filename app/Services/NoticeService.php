<?php

namespace App\Services;

use App\Models\Notice;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Support\Facades\Log;

class NoticeService
{
    /**
     * @param $title
     * @param $content
     * @param $user_id
     * @param int $type
     */
    public function add($title, $content, $user_id, $type = 0)
    {
        try {
            Notice::create([
                'user_id' => $user_id,
                'type'    => $type,
                'title'   => $title,
                'content' => $content,
            ]);
        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
        }

    }
}