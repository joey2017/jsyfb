<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LegalBookSectionResource;
use App\Models\LegalBookSection;

class LegalBookSectionController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/legal/sections/{id}",
     *   tags={"LegalBook"},
     *   summary="家事宝典分类列表",
     *   description="家事宝典分类列表",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(in = "query",name = "id",description = "宝典分类id",required = false,type = "integer"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show($cate_id)
    {
        $condition = ['status', 1];
        if ($cate_id > 0) {
            $condition = [['cate_id', $cate_id], $condition];
        }
        $sections = LegalBookSection::where($condition)->orderBy('id','desc')->paginate(10);
        return LegalBookSectionResource::collection($sections);
    }
}
