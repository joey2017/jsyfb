<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\BusinessCategoryResource;
use App\Models\BusinessCategory;

class BusinessCategoryController extends Controller
{
    /**
     *
     * @SWG\Get(
     *   path="/business/categories",
     *   summary="业务分类列表",
     *   tags={"Tool"},
     *   description="业务分类",
     *   produces={"application/json"},
     *   @SWG\Response(response="200", description="成功"),
     *   @SWG\Response(response="401", description="未授权"),
     *   @SWG\Response(response="405", description="访问方式不正确")
     * )
     */
    public function index()
    {
        $categories = BusinessCategory::paginate(5);
        return BusinessCategoryResource::collection($categories);
    }
}
