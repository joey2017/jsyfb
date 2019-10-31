<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\IngotsConfigResource;
use App\Models\IngotsConfig;
use App\Models\SystemConfig;
use Illuminate\Http\Request;

class IngotsConfigController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/ingots/config",
     *   tags={"MainPage"},
     *   summary="法宝获得渠道配置列表",
     *   description="法宝获得渠道配置列表",
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index()
    {
        $configs = IngotsConfig::all();
        return $this->success(IngotsConfigResource::collection($configs));
    }

    /**
     * @SWG\Get(
     *   path="/ingots/vip",
     *   tags={"MainPage"},
     *   summary="获得VIP通道法宝渠道配置值",
     *   description="获得VIP通道法宝渠道配置值",
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show()
    {
        return $this->success(SystemConfig::where('key', 'vip_ingots')->first()->value ?? 0);
    }
}
