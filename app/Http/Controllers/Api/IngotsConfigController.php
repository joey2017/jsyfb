<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\IngotsConfigResource;
use App\Models\IngotsConfig;

class IngotsConfigController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/ingots/config",
     *   tags={"MainPage"},
     *   summary="法宝获得渠道列表",
     *   description="法宝获得渠道列表",
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
        $configs = IngotsConfig::paginate(10);
        return IngotsConfigResource::collection($configs);
    }
}
