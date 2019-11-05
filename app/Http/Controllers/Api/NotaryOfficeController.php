<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\NotaryOfficeResource;
use App\Models\NotaryOffice;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class NotaryOfficeController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/notarys/offices",
     *   tags={"Tool"},
     *   summary="公证处列表",
     *   description="公证处列表",
     *   @SWG\Parameter(in="query",name="location",type="string",description="纬度lat，经度lng坐标，用英文逗号分割(示例：lat,lng)",required=true),
     *   @SWG\Parameter(in="query",name="name",type="string",description="公证处名称",required=false),
     *   @SWG\Parameter(in="query",name="avg_point",type="string",description="服务评分",required=false),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index(Request $request)
    {

        /*$from    = $request->input('location');
        $notarys = DB::table((new NotaryOffice)->getTable())->paginate(10)->toArray();
        foreach ($notarys['data'] as &$notary) {
            $notary->picture  = env('APP_UPLOAD_PATH') . '/' . $notary->picture;
            $notary->distance = $this->distance($from, [$notary->lat, $notary->lng]);
        }
        array_multisort(array_column($notarys['data'], 'distance'), SORT_ASC, $notarys['data']);
        return $this->success($notarys);*/


//        $this->validate($request, [
//            'location' => ['required', 'string', 'regex:/^[0-9.,]+$/'],
//        ]);
        $from = explode(',', $request->input('location'));

        Log::notice('location:', ['data' => $request->input('location')]);

        //测试
        empty($request->input('location')) && $from = [
            22.809098,
            108.335280,
        ];

        if (count($from) < 2 || $from[0] == '' || $from[1] == '') {
            return $this->failed('位置信息错误，经纬度参数不全');
        }

        $points  = $this->squarePoint($from[0], $from[1], 5);
        $notarys = $this->query($points);

        if (!empty($notarys['data'])) {
            foreach ($notarys['data'] as &$notary) {
                $notary['picture']  = env('APP_UPLOAD_PATH') . '/' . $notary['picture'];
                $notary['distance'] = $this->getDistance($from[0], $from[1], $notary['lat'], $notary['lng']);
            }
            array_multisort(array_column($notarys['data'], 'distance'), SORT_ASC, $notarys['data']);
        }
        Log::warning('notaryOffice:', ['data' => $notarys]);
        return $this->success($notarys ?? []);

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


    /**
     * 腾讯地图计算两点间驾车距离
     * @param $from
     * @param $to
     * @return bool|mixed
     * @throws \GuzzleHttp\Exception\GuzzleException
     */
    protected function distance($from, $to)
    {
        empty($from) && $from = implode(',', [
            "lat" => 22.809098,
            "lng" => 108.335280,
        ]);
        $result = false;
        if (!empty($from)) {
            $url    = 'https://apis.map.qq.com/ws/distance/v1/?';
            $params = [
                'mode' => 'driving',
                'from' => $from,//lat,lng
                'to'   => implode(',', $to),
                'key'  => env('TENCENT_MAP_API_KEY'),
            ];
            //$url    = $url . http_build_query($params);
            $client = new Client();

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

    /**
     * @param $location
     * @return \Illuminate\Support\Collection
     */
    protected function query($location)
    {
        return NotaryOffice::whereBetween('lat', [$location['left-bottom']['lat'], $location['left-top']['lat']])
            ->whereBetween('lng', [$location['left-bottom']['lng'], $location['right-bottom']['lng']])
            ->orderBy('lat', 'asc')->orderBy('lng', 'asc')->paginate(10)->toArray();
    }

    /**
     * 计算某个经纬度的周围某段距离的正方形的四个点
     * @param $lat  float 纬度
     * @param $lng  float 经度
     * @param int $distance 该点所在圆的半径，该圆与此正方形内切，默认值为1千米
     * @param int $radius 地球半径 平均6371km
     * @return array 正方形的四个点的经纬度坐标
     */
    protected function squarePoint($lat, $lng, $distance = 1, $radius = 6371)
    {
        $dlng = 2 * asin(sin($distance / (2 * $radius)) / cos(deg2rad($lat)));
        $dlng = rad2deg($dlng);

        $dlat = $distance / $radius;
        $dlat = rad2deg($dlat);

        return array(
            'left-top'     => array(
                'lat' => $lat + $dlat,
                'lng' => $lng - $dlng
            ),
            'right-top'    => array(
                'lat' => $lat + $dlat,
                'lng' => $lng + $dlng
            ),
            'left-bottom'  => array(
                'lat' => $lat - $dlat,
                'lng' => $lng - $dlng
            ),
            'right-bottom' => array(
                'lat' => $lat - $dlat,
                'lng' => $lng + $dlng
            )
        );
    }

    /**
     * 两点间直线距离计算
     * @param $lat1
     * @param $lng1
     * @param $lat2
     * @param $lng2
     * @return float
     */
    public function getDistance($lat1, $lng1, $lat2, $lng2)
    {
        $earthRadius = 6367000; //定义地球半径

        $lat1 = ($lat1 * pi()) / 180;
        $lng1 = ($lng1 * pi()) / 180;

        $lat2 = ($lat2 * pi()) / 180;
        $lng2 = ($lng2 * pi()) / 180;

        $calcLongitude      = $lng2 - $lng1;
        $calcLatitude       = $lat2 - $lat1;
        $stepOne            = pow(sin($calcLatitude / 2), 2) + cos($lat1)
            * cos($lat2) * pow(sin($calcLongitude / 2), 2);
        $stepTwo            = 2 * asin(min(1, sqrt($stepOne)));
        $calculatedDistance = $earthRadius * $stepTwo;

        return round($calculatedDistance);
    }


}
