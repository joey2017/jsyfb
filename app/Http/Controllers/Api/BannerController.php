<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\BannerResource;
use App\Models\Banner;

class BannerController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/banners",
     *   tags={"MainPage"},
     *   summary="轮播图列表",
     *   description="轮播图列表",
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
        $banners = Banner::orderBy('sort', 'asc')->orderBy('id', 'desc')->paginate(4);
        return $this->success(BannerResource::collection($banners));
    }
}
