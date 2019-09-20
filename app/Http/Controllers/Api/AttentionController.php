<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\AttentionResource;
use App\Models\Attention;
use Illuminate\Support\Facades\Auth;

class AttentionController extends Controller
{
    /**
     *
     * @SWG\Get(
     *   path="/attentions",
     *   summary="我的关注列表",
     *   tags={"User"},
     *   description="请求该接口需要先登录。",
     *   operationId="attentions.index",
     *   produces={"application/json"},
     *   @SWG\Response(response="200", description="成功"),
     *   @SWG\Response(response="401", description="未授权"),
     *   @SWG\Response(response="405", description="访问方式不正确")
     * )
     */
    public function index()
    {
        $attentions = Attention::where('user_id',Auth::guard('api')->id())->paginate(5);
        return AttentionResource::collection($attentions);
    }

    /**
     *
     * @SWG\Get(
     *   path="/attentions/{id}",
     *   summary="关注详情",
     *   tags={"User"},
     *   description="请求该接口需要先登录。",
     *   operationId="messages.store",
     *   produces={"application/json"},
     *   @SWG\Parameter(
     *     in="path",
     *     name="id",
     *     type="string",
     *     description="用户id",
     *     required=true,
     *   ),
     *   @SWG\Response(response="200", description="成功"),
     *   @SWG\Response(response="401", description="未授权"),
     *   @SWG\Response(response="405", description="访问方式不正确")
     * )
     */
    public function show(Attention $attention)
    {
        return $this->success(new AttentionResource($attention));
    }

}
