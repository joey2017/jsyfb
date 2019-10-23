<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\GoodsResource;
use App\Models\Goods;

class GoodsController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/goods",
     *   tags={"User"},
     *   summary="商品列表",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response="200",description="获取商品列表")
     *
     * )
     */
    public function index()
    {
        $goods = Goods::paginate(10);
        return $this->success(GoodsResource::collection($goods));
    }

    /**
     * @SWG\Get(
     *   path="/goods/{id}",
     *   tags={"User"},
     *   summary="商品详情",
     *   description="商品详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="商品id"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show(Goods $goods)
    {
        return $this->success(new GoodsResource($goods));
    }

}
