<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\MessageRequest;
use App\Models\Message;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
    /**
     *
     * @SWG\Post(
     *   path="/messages",
     *   summary="提交留言",
     *   tags={"MainPage"},
     *   description="请求该接口需要先登录。",
     *   operationId="messages.store",
     *   produces={"application/json"},
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(in="formData",name="content",type="string",description="留言内容",required=true),
     *   @SWG\Parameter(in="formData",name="username",type="string",description="留言用户",required=false),
     *   @SWG\Parameter(in="formData",name="mobile",type="string",description="用户手机",required=false),
     *   @SWG\Response(response="201", description="成功"),
     *   @SWG\Response(response="401", description="未授权")
     * )
     */
    public function store(MessageRequest $request)
    {
        Message::create(array_merge($request->all(),['user_id' => Auth::guard('api')->id()]));
        return $this->created('留言成功');
    }

}
