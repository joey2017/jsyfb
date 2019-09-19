<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\NoticeResource;
use App\Models\Notice;
use Illuminate\Support\Facades\Auth;

class NoticeController extends Controller
{
    /**
     * @SWG\Get(
     *     path="/notices",
     *     summary="消息列表",
     *     tags={"系统消息"},
     *     description="包含各种消息",
     *     operationId="home.index",
     *     produces={"application/json"},
     *     @SWG\Response(
     *         response=200,
     *         description="基本信息",
     *         @SWG\Schema(
     *            type="json",
     *            @SWG\Property(
     *               property="cate_id",
     *               type="integer",
     *               description="消息分类id"
     *            ),
     *             @SWG\Property(
     *               property="title",
     *               type="string",
     *               description="消息标题"
     *            ),
     *             @SWG\Property(
     *               property="content",
     *               type="string",
     *               description="消息内容"
     *            ),
     *            @SWG\Property(
     *               property="status",
     *               type="integer",
     *               description="消息状态"
     *            )
     *         )
     *     ),
     *     @SWG\Response(
     *         response=422,
     *         description="error",
     *     )
     * )
     */
    public function index()
    {
        //获取认证用户信息
        $userId = Auth::guard('api')->id();
        $notices = Notice::where('user_id',$userId)->paginate(5);
        return NoticeResource::collection($notices);
    }

    public function show(Notice $notice)
    {
        if ($notice->user_id != Auth::guard('api')->id()) {
            return $this->failed('无权访问',403);

        };
        return $this->success(new NoticeResource($notice));
    }

}
