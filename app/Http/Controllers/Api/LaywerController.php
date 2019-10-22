<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LaywerResource;
use App\Models\Attention;
use App\Models\Laywer;
use App\Models\Region\City;
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

        if (isset($data['province_code'])) {
            $model->where('province_code', $data['province_code']);
        }

        if (isset($data['city_code'])) {
            $model->where('city_code', $data['city_code']);
        }

        if (isset($data['cate_id'])) {
            $model->whereRaw('cate_id REGEXP ?', [is_array($data['cate_id']) ? implode('|', $data['cate_id']) : $data]);
        }

        $laywers = $model->paginate(10)->toArray();

        //已关注列表
        $attentions = Attention::where('user_id',Auth::guard('api')->id())->pluck('laywer_id')->toArray();

        if (count($laywers['data']) > 0) {
            foreach ($laywers['data'] as &$laywer) {
                $laywer->expertise = ['地产', '婚姻家庭'];
                $laywer->city_name = City::firstOrCreate(['CITY_CODE' => $laywer->city_code])->CITY_NAME;
                $laywer->status    = Laywer::getStatusName($laywer->status);
                if (in_array($laywer->id,$attentions)) {
                    $laywer->is_attention = true;
                } else {
                    $laywer->is_attention = false;
                }
            }
        }

        return $laywers;
        //$laywers = Laywer::paginate(10);
        //return LaywerResource::collection($laywers);
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

}
