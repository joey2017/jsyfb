<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LegalBookCategoryResource;
use App\Models\LegalBookCategory;

class LegalBookCategoryController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/legal/categories",
     *   tags={"LegalBook"},
     *   summary="家事宝典分类列表",
     *   description="家事宝典分类列表",
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
     *   path="/legal/categories/{id}",
     *   summary="家事宝典分类详情",
     *   tags={"LegalBook"},
     *   produces={"application/json"},
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(in="path",name="id",type="string",description="家事宝典分类id",required=true),
     *   @SWG\Response(response="200", description="成功"),
     *   @SWG\Response(response="401", description="未授权"),
     *   @SWG\Response(response="405", description="访问方式不正确")
     * )
     */
    public function show(LegalBookCategory $category)
    {
        return $this->success(new LegalBookCategoryResource($category));
    }

    /**
     * @param int $parent_id
     * @return array
     */
    protected function tree($parent_id = 0)
    {
        $rows  = LegalBookCategory::where('parent_id', $parent_id)->orderBy('order', 'ASC')->get();
        $array = [];
        if (sizeof($rows) != 0) {
            foreach ($rows as &$val) {
                unset($val['is_deleted']);
                $val['status']   = LegalBookCategory::getStatusName($val['status']);
                $val['jump_url'] = 'articles/legals/sections/{id}';
                $val['list']     = $this->tree($val['id']);
                $array[]         = $val;
            }
        }
        return $array;
    }
}
