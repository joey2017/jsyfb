<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\FeedbackRequest;
use App\Models\FeedBack;
use Illuminate\Support\Facades\Auth;

class FeedbackController extends Controller
{
    /**
     *
     * @SWG\Post(
     *   path="/feedbacks",
     *   summary="提交意见反馈",
     *   tags={"User"},
     *   description="请求该接口需要先登录。",
     *   produces={"application/json"},
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(in="formData",name="content",type="string",description="留言内容",required=true),
     *   @SWG\Response(response="201", description="成功"),
     *   @SWG\Response(response="401", description="未授权")
     * )
     */
    public function store(FeedbackRequest $request)
    {
        FeedBack::create(array_merge($request->all(),['user_id' => Auth::guard('api')->id(),'created_at' => date('Y-m-d H:i:s')]));
        return $this->setStatusCode('201')->success('意见反馈成功');
    }

}
