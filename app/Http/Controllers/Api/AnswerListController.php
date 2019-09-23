<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\AnswerListResource;
use App\Models\AnswerList;

class AnswerListController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/answer/lists",
     *   tags={"Misc"},
     *   summary="每日答题库",
     *   description="答题列表",
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index()
    {
        $lists = AnswerList::paginate(5);
        return AnswerListResource::collection($lists);
    }

    /**
     * @SWG\Get(
     *   path="/answer/lists/{id}",
     *   tags={"Misc"},
     *   summary="题目详情",
     *   description="题目详情",
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="答题id"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show(AnswerList $list)
    {
        return $this->success(new AnswerListResource($list));
    }

}
