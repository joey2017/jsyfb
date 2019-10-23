<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\NotaryOfficeResource;
use App\Models\NotaryOffice;
use GuzzleHttp\Client;

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
        foreach ($notarys as $notary) {
            $notary->distance = $this->distance();
        }
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


    protected function distance()
    {
        $from = [
            "lat" => 39.983171,
            "lng" => 116.308479,
        ];
        $to = [
            "lat" => 39.99606,
            "lng" => 116.353455,
        ];
        if (isset($from['lng']) && isset($from['lat'])) {
            $url    = 'https://apis.map.qq.com/ws/distance/v1/?';
            $params = [
                'mode' => 'driving',
                'from' => implode(',', $from),//lat,lng
                'to'   => implode(',', $to),
                'key'  => env('TENCENT_MAP_API_KEY'),
            ];
            $url    = $url . http_build_query($params);

            $client = new Client();
            $response = $client->request('GET', $url);
            $result   = \GuzzleHttp\json_decode($response->getBody(), true);
            dd($result);
        }
        return $this->success('111');
    }


}
