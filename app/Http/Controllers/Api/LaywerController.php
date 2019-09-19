<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LaywerResource;
use App\Models\Laywer;

class LaywerController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/laywer",
     *   tags={"商品"},
     *   summary="商品列表",
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "goods_name",
     *        description = "商品名称",
     *        required = false,
     *        type = "string"
     *   ),
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "min_shop_price",
     *        description = "商品最小价格",
     *        required = false,
     *        type = "number"
     *   ),
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "max_shop_price",
     *        description = "商品最大价格",
     *        required = false,
     *        type = "number"
     *   ),
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "goods_sn",
     *        description = "商品编号",
     *        required = false,
     *        type = "string"
     *   ),
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "brand_id",
     *        description = "品牌id",
     *        required = false,
     *        type = "integer"
     *   ),
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "goods_type",
     *        description = "商品类型  1：商品 2：套餐 3：积分商品",
     *        required = false,
     *        type = "string"
     *   ),
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "status",
     *        description = "商品状态 空或0获取所有商品  1：在售  2：售罄 3：下架 4：在售+售罄",
     *        required = false,
     *        type = "string",
     *        enum={1, 2, 3, 4}
     *   ),
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "cat_id",
     *        description = "商品分类id，可以是一二三级分类id，可以是数组（多个）或者数字",
     *        required = false,
     *        type = "integer"
     *   ),
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "filter_cat_id",
     *        description = "需要进行过滤的商品分类id，可以是一二三级分类id，可以是数组（多个）或者数字",
     *        required = false,
     *        type = "integer"
     *   ),
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "sort",
     *        description = "排序，依次是 库存排序 售价排序 销量排序 下单量  带'-'号的为倒序，反之为升序",
     *        required = false,
     *        type = "string",
     *        enum={"goods_number", "-goods_number", "shop_price", "-shop_price", "sales_volume", "-sales_volume"}
     *   ),
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "get_good_evaluate",
     *        description = "需要获取好评量 0：不获取 1：获取",
     *        required = false,
     *        type = "integer",
     *        enum={0, 1}
     *   ),
     *   @SWG\Parameter(
     *        in = "query",
     *        name = "get_collect_num",
     *        description = "需要获取收藏数 0：不获取 1：获取",
     *        required = false,
     *        type = "integer",
     *        enum={0, 1}
     *   ),
     *   @SWG\Response(
     *     response="200",
     *     description="获取商品列表",
     *     @SWG\Schema(ref="#/definitions/goodsTmp")
     *   )
     *
     * )
     */
    public function index()
    {
        $laywers = Laywer::paginate(5);
        return LaywerResource::collection($laywers);
    }

    public function show(Laywer $laywer)
    {
        return $this->success(new LaywerResource($laywer));
    }

}
