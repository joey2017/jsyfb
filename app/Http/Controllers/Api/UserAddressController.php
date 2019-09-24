<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\UserAddressRequest;
use App\Http\Resources\Api\UserAddressResource;
use App\Models\UserAddress;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class UserAddressController extends Controller
{

    /**
     * @SWG\Get(
     *   path="/users/addresses",
     *   tags={"User"},
     *   summary="地址列表",
     *   description="地址列表",
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
        $addresses = UserAddress::paginate(5);
        return UserAddressResource::collection($addresses);
    }

    /**
     * @SWG\Get(
     *   path="/users/addresses/{id}",
     *   tags={"User"},
     *   summary="地址详情",
     *   description="地址详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="地址id"),
     *   @SWG\Response(response=200,description="成功"),
     *   @SWG\Response(response=404,description="未找到")
     * )
     */
    public function show(UserAddress $address)
    {
        if ($address->user_id != Auth::guard('api')->id()) {
            return $this->failed('禁止访问', '403');
        }
        return $this->success(new UserAddressResource($address));
    }

    /**
     * @SWG\Post(
     *     path="/users/address",
     *     summary="新增地址",
     *     tags={"User"},
     *     description="新增地址",
     *     produces={"application/json"},
     *     security={
     *      {
     *          "Bearer":{}
     *      }
     *     },
     *     @SWG\Parameter(name="receiver",in="formData",required=true,description="收货人",type="string"),
     *     @SWG\Parameter(name="receiver_mobile",in="formData",required=true,description="收货人手机号码",type="string"),
     *     @SWG\Parameter(name="province",in="formData",required=true,description="省份",type="string"),
     *     @SWG\Parameter(name="city",in="formData",required=true,description="城市",type="string"),
     *     @SWG\Parameter(name="district",in="formData",required=true,description="区县",type="string"),
     *     @SWG\Parameter(name="address",in="formData",required=true,description="地址详情",type="string"),
     *     @SWG\Response(response=201,description="成功"),
     *     @SWG\Response(response=403,description="禁止访问"),
     *     @SWG\Response(response=500,description="服务器错误")
     * )
     */
    public function store(UserAddressRequest $userAddressRequest)
    {
        UserAddress::create(array_merge($userAddressRequest->all(),['user_id' => Auth::guard('api')->id()]));
        return $this->setStatusCode(201)->success('添加成功');
    }


    /**
     * @SWG\Put(
     *     path="/users/address/{id}",
     *     summary="地址修改保存",
     *     tags={"User"},
     *     description="地址修改保存",
     *     produces={"application/json"},
     *     security={
     *      {
     *          "Bearer":{}
     *      }
     *     },
     *     @SWG\Parameter(name="id",in="path",required=true,description="地址id",type="integer"),
     *     @SWG\Parameter(name="receiver",in="formData",required=true,description="收货人",type="string"),
     *     @SWG\Parameter(name="receiver_mobile",in="formData",required=true,description="收货人手机号码",type="string"),
     *     @SWG\Parameter(name="province",in="formData",required=true,description="省份",type="string"),
     *     @SWG\Parameter(name="city",in="formData",required=true,description="城市",type="string"),
     *     @SWG\Parameter(name="district",in="formData",required=true,description="区县",type="string"),
     *     @SWG\Parameter(name="address",in="formData",required=true,description="地址详情",type="string"),
     *     @SWG\Response(response=201,description="成功"),
     *     @SWG\Response(response=403,description="禁止访问"),
     *     @SWG\Response(response=500,description="服务器错误")
     * )
     */
    public function update(UserAddress $address, UserAddressRequest $userAddressRequest)
    {
        if ($address->user_id != Auth::guard('api')->id()) {
            return $this->failed('禁止访问', 403);
        }
        try {

            $address->receiver        = $userAddressRequest->input('receiver');
            $address->receiver_mobile = $userAddressRequest->input('receiver_mobile');
            $address->province        = $userAddressRequest->input('province');
            $address->city            = $userAddressRequest->input('city');
            $address->district        = $userAddressRequest->input('district');
            $address->address         = $userAddressRequest->input('address');

            if ($address->save()) {
                return $this->setStatusCode(201)->success('修改成功');
            }

        } catch (\PDOException $e) {
            Log::channel('mysqllog')->error('mysql错误：', ['msg' => $e->getMessage()]);
        }

        return $this->failed('修改失败,请稍后重试', 500);
    }
}
