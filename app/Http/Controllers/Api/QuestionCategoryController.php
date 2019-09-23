<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LegalBookCategoryResource;
use App\Models\QuestionCategory;

class QuestionCategoryController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/questions/categories",
     *   tags={"MainPage"},
     *   summary="问题分类列表",
     *   description="问题分类列表",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index()
    {
        return $this->success($this->tree());
    }

    /**
     *
     * @SWG\Get(
     *   path="/questions/categories/{id}",
     *   summary="问题分类详情",
     *   tags={"MainPage"},
     *   produces={"application/json"},
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(in="path",name="id",type="string",description="问题分类id",required=true),
     *   @SWG\Response(response="200", description="成功"),
     *   @SWG\Response(response="401", description="未授权"),
     *   @SWG\Response(response="405", description="访问方式不正确")
     * )
     */
    public function show(QuestionCategory $category)
    {
        return $this->success(new LegalBookCategoryResource($category));
    }

    /**
     * @param int $parent_id
     * @return array
     */
    protected function tree($parent_id = 0)
    {
        $rows = QuestionCategory::where('parent_id',$parent_id)->orderBy('order','ASC')->get();
        $array = [];
        if (sizeof($rows) != 0) {
            foreach ($rows as &$val){
                unset($val['is_deleted']);
                $val['status'] = QuestionCategory::getStatusName($val['status']);
                $val['list'] = $this->tree($val['id']);
                $array[] = $val;
            }
        }
        return $array;
    }
}
