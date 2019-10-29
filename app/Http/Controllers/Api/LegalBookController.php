<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LegalBookResource;
use App\Models\LegalBook;

class LegalBookController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/legal/books/{id}",
     *   tags={"LegalBook"},
     *   summary="家事宝典章节详情",
     *   description="家事宝典章节详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="宝典章节id"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show($section_id)
    {
        $condition = ['status', LegalBook::NORMAL];
        if ($section_id > 0) {
            $condition = [['section_id', $section_id], $condition];
        }
        $book = LegalBook::where($condition)->first();
        return $this->success(new LegalBookResource($book));
    }
}
