<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LaywerResource;
use App\Models\Attention;
use App\Models\Laywer;
use App\Models\Region\Area;
use App\Models\Region\City;
use App\Models\Region\Province;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class LaywerController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/laywers",
     *   tags={"Tool"},
     *   summary="律师列表",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(in = "query",name = "name",description = "律师名称",required = false,type = "string"),
     *   @SWG\Parameter(in = "query",name = "province_code",description = "省份代码",required = false,type = "string"),
     *   @SWG\Parameter(in = "query",name = "city_code",description = "城市代码",required = false,type = "string"),
     *   @SWG\Parameter(in = "query",name = "cate_id",description = "擅长",required = false,type = "integer"),
     *   @SWG\Response(response="200",description="获取律师列表")
     *
     * )
     */
    public function index(Request $request)
    {
        $data  = $request->all();
        $model = DB::table((new Laywer())->getTable());

        if (!empty($data['province_code'])) {
            $model->where('province_code', $data['province_code']);
        }

        if (!empty($data['city_code'])) {
            $model->where('city_code', $data['city_code']);
        }

        if (!empty($data['cate_id'])) {
            $model->whereRaw('cate_id REGEXP ?', [is_array($data['cate_id']) ? implode('|', $data['cate_id']) : $data]);
        }

        $laywers = $model->paginate(10)->toArray();

        //已关注列表
        $attentions = Attention::where('user_id', Auth::guard('api')->id())->pluck('laywer_id')->toArray();

        if (count($laywers['data']) > 0) {
            foreach ($laywers['data'] as &$laywer) {
                $laywer->expertise = json_decode($laywer->expertise, true);
                $laywer->status    = Laywer::getStatusName($laywer->status);
                $laywer->avatar    = env('APP_UPLOAD_PATH') . '/' . $laywer->avatar;
                if (!empty($laywer->city_code)) {
                    $laywer->city_name = City::where('code', $laywer->city_code)->first()->city_name;
                }
                if (in_array($laywer->id, $attentions)) {
                    $laywer->is_attention = true;
                } else {
                    $laywer->is_attention = false;
                }
            }
        }

        return $this->success($laywers);
    }

    /**
     * @SWG\Get(
     *   path="/laywers/{id}",
     *   tags={"Tool"},
     *   summary="律师详情",
     *   description="律师详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="律师id"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show(Laywer $laywer)
    {
        return $this->success(new LaywerResource($laywer));
    }

    /**
     * @SWG\Get(
     *   path="/provinces",
     *   tags={"Tool"},
     *   summary="全国省份",
     *   description="全国省份数据",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function provinces()
    {
        $provinces = Province::all(['id', 'code', 'province_name', 'short_name', 'lng', 'lat', 'sort'])->toArray();
        $other     = [
            [
                'id'            => '0',
                'code'          => '0',
                'province_name' => '全国',
                'short_name'    => '全国',
                'lng'           => '0',
                'lat'           => '0',
                'sort'          => '0',
            ]
        ];
        return $this->success($other + $provinces);
    }


    /**
     * @SWG\Get(
     *   path="/citys",
     *   tags={"Tool"},
     *   summary="指定省份城市",
     *   description="指定省份城市",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="code", type="integer", required=true, in="query", description="省份代码"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function citys(Request $request)
    {
        $code = $request->input('code');
        if (empty($code)) {
            $citys = [
                [
                    'id'            => '0',
                    'code'          => '0',
                    'city_name'     => '全国',
                    'short_name'    => '全国',
                    'province_code' => '0',
                    'lng'           => '0',
                    'lat'           => '0',
                    'sort'          => '0',
                ]
            ];
        } else {
            $citys = City::where('province_code', $code)->select(['id', 'code', 'city_name', 'short_name', 'province_code', 'lng', 'lat', 'sort'])->get()->toArray();
        }
        return $this->success($citys);
    }

    /**
     * @SWG\Get(
     *   path="/areas",
     *   tags={"Tool"},
     *   summary="指定城市区县",
     *   description="指定城市区县",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="code", type="integer", required=true, in="query", description="城市代码"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function areas(Request $request)
    {
        $code = $request->input('code');
        if (empty($code)) {
            $areas = [
                [
                    'id'         => '0',
                    'code'       => '0',
                    'area_name'  => '全国',
                    'short_name' => '全国',
                    'city_code'  => '0',
                    'lng'        => '0',
                    'lat'        => '0',
                    'sort'       => '0',
                ]
            ];
        } else {
            $areas = Area::where('city_code', $code)->select(['id', 'code', 'area_name', 'short_name', 'city_code', 'lng', 'lat', 'sort'])->get()->toArray();
        }
        return $this->success($areas);
    }


}
