<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\NotaryAdviceResource;
use App\Models\NotaryAdvice;

class NotaryAdviceController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/notarys/advices",
     *   tags={"Tool"},
     *   summary="公证处咨询列表",
     *   description="公证处咨询列表",
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index()
    {
        $advices = NotaryAdvice::paginate(5);
        return NotaryAdviceResource::collection($advices);
    }

}
