<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LegalBookSectionResource;
use App\Models\LegalBookCategory;
use App\Models\LegalBookSection;
use Illuminate\Support\Facades\DB;

class LegalBookSectionController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/legal/sections/{id}",
     *   tags={"LegalBook"},
     *   summary="家事宝典分类列表",
     *   description="家事宝典分类列表",
     *   @SWG\Parameter(in = "query",name = "id",description = "宝典分类id",required = false,type = "integer"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show(LegalBookCategory $cate)
    {
        $condition = [['status', LegalBookSection::NORMAL], ['cate_id', $cate->id]];
        $sections  = LegalBookSection::where($condition)->orderBy('id','desc')->paginate(10);
        return $this->success(LegalBookSectionResource::collection($sections));
    }
}
