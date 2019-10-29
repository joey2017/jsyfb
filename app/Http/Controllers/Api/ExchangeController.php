<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\ExchangeResource;
use App\Models\Exchange;
use App\Models\Goods;
use App\Models\IngotsLog;
use App\Services\IngotsService;
use App\Services\NoticeService;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ExchangeController extends Controller
{

    /**
     * @var IngotsService
     */
    protected $ingots;

    /**
     * @var NoticeService
     */
    protected $notice;

    /**
     * ExchangeController constructor.
     * @param IngotsService $ingotsService
     * @param NoticeService $noticeService
     */
    public function __construct(IngotsService $ingotsService, NoticeService $noticeService)
    {
        $this->ingots = $ingotsService;
        $this->notice = $noticeService;
    }

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
        $exchanges = Exchange::where([['user_id', Auth::guard('api')->id()], ['status', Exchange::NORMAL]])->paginate(10);
        return $this->success(ExchangeResource::collection($exchanges));
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
     *     @SWG\Parameter(name="address",in="formData",required=true,description="地址",type="string"),
     *     @SWG\Parameter(name="ingots",in="formData",required=true,description="法宝数量",type="string"),
     *     @SWG\Parameter(name="quantity",in="formData",required=true,description="兑换商品数量",type="string"),
     *     @SWG\Response(response=201,description="成功"),
     *     @SWG\Response(response=403,description="禁止访问"),
     *     @SWG\Response(response=500,description="服务器错误")
     * )
     */
    public function store(Request $request)
    {
        $quantity = $request->input('quantity', 0);
        $goods_id = $request->input('goods_id', 0);
        $address  = $request->input('address', '');

        $goods = Goods::findOrFail($goods_id);

        $ingots = $goods->exchange_price ?? $request->input('ingots', 0);

        if ($ingots < 0 || $quantity <= 0) {
            return $this->failed('参数错误', 400);
        }

        if ($ingots > Auth::guard('api')->user()->ingots) {
            return $this->failed('法宝数量不足', 400);
        }

        if ($quantity > $goods->stock) {
            return $this->failed('商品数量不足', 400);
        }

        if ($address == '') {
            return $this->failed('地址不能为空', 400);
        }

        $result = false;

        try {
            $result = DB::transaction(function () use ($ingots, $quantity, $goods_id, $address) {
                Exchange::create([
                    'user_id'    => Auth::guard('api')->id(),
                    'quantity'   => $quantity,
                    'ingots'     => $ingots,
                    'goods_id'   => $goods_id,
                    'address'    => $address,
                    'created_at' => date('Y-m-d H:i:s')
                ]);
                $this->ingots->update($ingots, '兑换商品', IngotsLog::TYPE_DECRE, Auth::guard('api')->user());
                $goods = $this->updateStock($goods_id, $quantity);
                $this->notice->add('法宝兑换', '使用' . $ingots . '个法宝兑换' . $quantity . '件商品,该商品为' . $goods->goods_name, Auth::guard('api')->id(), 2);
                return true;
            });

        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
        }
        return $result ? $this->created('兑换成功') : $this->failed('兑换失败');

    }


    /**
     * @param $goods_id
     * @param $quantity
     * @return \Illuminate\Database\Eloquent\Collection|\Illuminate\Database\Eloquent\Model|static|static[]
     */
    protected function updateStock($goods_id, $quantity)
    {
        $goods        = Goods::findOrFail($goods_id);
        $goods->stock -= $quantity;
        $goods->save();
        return $goods;
    }

}
