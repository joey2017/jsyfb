<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LaywerResource;
use App\Models\Laywer;
use Illuminate\Http\Request;
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
        /*
        $data = $request->all();
        $model = DB::table((new Laywer())->getTable());
        if (isset($data['city_code'])) {
            $model->where('city_code', $data['city_code']);
        }

        if (isset($data['cate_id'])) {
            $model->whereRaw('cate_id REGEXP ?', [implode('|',$data['cate_id'])]);
        }

        $laywers = $model->paginate(5);
        */
        $laywers = Laywer::paginate(5);
        return LaywerResource::collection($laywers);
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
