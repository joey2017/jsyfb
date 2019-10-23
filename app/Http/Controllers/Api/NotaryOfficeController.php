<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\NotaryOfficeResource;
use App\Models\NotaryOffice;

class NotaryOfficeController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/notarys/offices",
     *   tags={"Tool"},
     *   summary="公证处列表",
     *   description="公证处列表",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(in="query",name="name",type="string",description="公证处名称",required=false),
     *   @SWG\Parameter(in="query",name="avg_point",type="string",description="服务评分",required=false),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index()
    {
        $notarys = NotaryOffice::paginate(10);
        return $this->success(NotaryOfficeResource::collection($notarys));
    }


    /**
     * @SWG\Get(
     *   path="/notarys/offices/{id}",
     *   tags={"Tool"},
     *   summary="公证处详情",
     *   description="公证处详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="公证处id"),
     *   @SWG\Response(response=200,description="成功"),
     * )
     */
    public function show(NotaryOffice $office)
    {
        return $this->success(new NotaryOfficeResource($office));
    }

}
