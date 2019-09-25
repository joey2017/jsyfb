<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\ExchangeResource;
use App\Models\Exchange;
use App\Models\Goods;
use App\Models\Ingots;
use App\Models\IngotsLog;
use App\Models\User;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ExchangeController extends Controller
{

    /**
     * @SWG\Get(
     *   path="/exchanges",
     *   tags={"User"},
     *   summary="法宝兑换商品列表",
     *   description="法宝兑换商品列表",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index()
    {
        $exchanges = Exchange::paginate(5);
        return ExchangeResource::collection($exchanges);
    }

    /**
     * @SWG\Get(
     *   path="/exchanges/{id}",
     *   tags={"User"},
     *   summary="兑换详情",
     *   description="兑换详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="兑换记录id"),
     *   @SWG\Response(response=200,description="成功"),
     *   @SWG\Response(response=404,description="未找到")
     * )
     */
    public function show(Exchange $exchange)
    {
        if ($exchange->user_id != Auth::guard('api')->id()) {
            return $this->failed('禁止访问', '403');
        }
        return $this->success(new ExchangeResource($exchange));
    }

    /**
     * @SWG\Post(
     *     path="/exchanges",
     *     summary="新增兑换",
     *     tags={"User"},
     *     description="新增兑换",
     *     produces={"application/json"},
     *     security={
     *      {
     *          "Bearer":{}
     *      }
     *     },
     *     @SWG\Parameter(name="goods_id",in="formData",required=true,description="商品id",type="integer"),
     *     @SWG\Parameter(name="ingots",in="formData",required=true,description="法宝数量",type="string"),
     *     @SWG\Parameter(name="quantity",in="formData",required=true,description="兑换商品数量",type="string"),
     *     @SWG\Response(response=201,description="成功"),
     *     @SWG\Response(response=403,description="禁止访问"),
     *     @SWG\Response(response=500,description="服务器错误")
     * )
     */
    public function store(Request $request)
    {
        if ($request->input('ingots') <= 0 || $request->input('quantity') <= 0) {
            return $this->failed('参数错误', 400);
        }

        if ($request->input('ingots') > Auth::guard('api')->user()->ingots) {
            return $this->failed('法宝数量不足',400);
        }

        if ($request->input('quantity') > Goods::findOrFail($request->input('goods_id'))->stock) {
            return $this->failed('商品数量不足',400);
        }

        try {
            DB::transaction(function () use ($request) {
                Exchange::create(array_merge($request->all(), ['user_id' => Auth::guard('api')->id(),'created_at' => date('Y-m-d H:i:s')]));
                $this->updateIngots($request->input('ingots'));
                $this->insertIngotsLog($request->input('ingots'));
                $this->updateStock($request->input('goods_id'),$request->input('quantity'));
            });

        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
        }
        return $this->setStatusCode(201)->success('兑换成功');
    }

    /**
     * @param $ingots
     */
    protected function updateIngots($ingots)
    {
        $ingot           = Ingots::firstOrCreate(['user_id' => Auth::guard('api')->id()]);
        $ingot->quantity -= $ingots;
        $ingot->save();

        //$user = User::find(Auth::guard('api')->id());
        $user = Auth::guard('api')->user();
        $user->ingots -= $ingots;
        $ingot->save();

    }

    /**
     * @param $quantity
     */
    protected function updateStock($goods_id, $quantity)
    {
        $goods        = Goods::findOrFail($goods_id);
        $goods->stock -= $quantity;
        $goods->save();
    }

    /**
     * @param $ingots
     */
    protected function insertIngotsLog($ingots)
    {
        IngotsLog::create([
            'user_id' => Auth::guard('api')->id(),
            'cost'    => $ingots,
            'descr'   => '兑换商品',
            'type'    => '2',
            'remark'  => '',
        ]);
    }
}
