<?php

namespace App\Http\Controllers\Api;

use App\Models\NotaryOfficeComment;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class NotaryOfficeCommentController extends Controller
{
    /**
     * @SWG\delete(
     *   path="/notarys-offices/comments/{id}",
     *   tags={"User"},
     *   summary="评论删除",
     *   description="公证处评论删除",
     *   @SWG\Parameter(in="path",name="id",type="integer",description="评论id",required=true),
     *   @SWG\Response(response=204,description="成功")
     * )
     */
    public function destory(NotaryOfficeComment $comment)
    {
        if ($comment->user_id != Auth::guard('api')->id()) {
            return $this->failed('禁止访问', 403);
        }
        try {
            $comment->delete();
        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
        } catch (\Exception $e) {
            Log::error('exception：' . $e->getMessage());
        }
        //no content return
        return $this->setStatusCode(204)->success('删除成功');
    }

}
