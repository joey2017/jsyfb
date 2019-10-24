<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\NotaryOfficeResource;
use App\Models\NotaryOffice;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

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
     *   @SWG\Parameter(in="query",name="location",type="string",description="纬度lat，经度lng坐标，用英文逗号分割(示例：lat,lng)",required=true),
     *   @SWG\Parameter(in="query",name="name",type="string",description="公证处名称",required=false),
     *   @SWG\Parameter(in="query",name="avg_point",type="string",description="服务评分",required=false),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index(Request $request)
    {
        $from = $request->input('location');
        //$notarys = NotaryOffice::paginate(10);
        $notarys = DB::table((new NotaryOffice)->getTable())->paginate(10)->toArray();
        foreach ($notarys['data'] as &$notary) {
            $notary->distance = $this->distance($from, [$notary->lat, $notary->lng]);
        }
        //return $this->success(NotaryOfficeResource::collection($notarys));
        return $this->success($notarys);
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


    protected function distance($from, $to)
    {
        empty($from) && $from = implode(',', [
            "lat" => 39.983171,
            "lng" => 116.308479,
        ]);
        $result = false;
        if (isset($from['lng']) && isset($from['lat'])) {
            $url    = 'https://apis.map.qq.com/ws/distance/v1/?';
            $params = [
                'mode' => 'driving',
                'from' => $from,//lat,lng
                'to'   => implode(',', $to),
                'key'  => env('TENCENT_MAP_API_KEY'),
            ];
            //$url    = $url . http_build_query($params);
            $client   = new Client();

            try {
                $response = $client->request('GET', $url, ['query' => $params]);
                $result   = \GuzzleHttp\json_decode($response->getBody(), true);
                if ($result['status'] == 0) {
                    $result = $result['result']['elements'][0]['distance'];
                }
            } catch (\Exception $exception) {
                Log::error('调用腾讯地图接口计算距离失败：' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
            }

        }
        return $result;
    }


}
