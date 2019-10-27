<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\AnswerListResource;
use App\Models\AnswerList;
use App\Models\AnswerRecord;
use Illuminate\Support\Facades\Auth;

class AnswerListController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/answer/lists",
     *   tags={"Misc"},
     *   summary="每日答题库",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   description="答题列表",
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index()
    {
        //用户已回答的题目
        $records = AnswerRecord::where('user_id', Auth::guard('api')->id())->pluck('answer_list_id')->toArray();

        $lists = AnswerList::whereNotIn('id', $records)->orderBy('id', 'desc')->paginate(10);
        return $this->success(AnswerListResource::collection($lists));
    }

    /**
     * @SWG\Get(
     *   path="/answer/lists/{id}",
     *   tags={"Misc"},
     *   summary="题目详情",
     *   description="题目详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="答题id"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show(AnswerList $list)
    {
        return $this->success(new AnswerListResource($list));
    }

}
