<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LaywerResource;
use App\Models\Laywer;

class LaywerController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/laywer",
     *   tags={"Tool"},
     *   summary="律师列表",
     *   @SWG\Parameter(in = "query",name = "name",description = "律师名称",required = false,type = "string"),
     *   @SWG\Parameter(in = "query",name = "cate_id",description = "职务分类id",required = false,type = "integer"),
     *   @SWG\Parameter(in = "query",name = "province",description = "省份",required = false,type = "string"),
     *   @SWG\Parameter(in = "query",name = "city",description = "城市",required = false,type = "string"),
     *   @SWG\Parameter(in = "query",name = "score",description = "服务评分",required = false,type = "number"),
     *   @SWG\Response(response="200",description="获取律师列表")
     *
     * )
     */
    public function index()
    {
        $laywers = Laywer::paginate(5);
        return LaywerResource::collection($laywers);
    }

    /**
     * @SWG\Get(
     *   path="/laywer/{id}",
     *   tags={"Tool"},
     *   summary="律师详情",
     *   description="律师详情",
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="律师id"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show(Laywer $laywer)
    {
        return $this->success(new LaywerResource($laywer));
    }

}
