<?php

namespace App\Http\Controllers\Api;

use App\Models\Member;
use App\Services\IngotsService;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;

class MemberController extends Controller
{
    protected $ingots;

    /**
     * MemberController constructor.
     * @param IngotsService $service
     */
    public function __construct(IngotsService $service)
    {
        $this->ingots = $service;
    }

    /**
     *
     * @SWG\Post(
     *   path="/members",
     *   summary="VIP通道咨询专家消费法宝",
     *   tags={"MainPage"},
     *   description="VIP通道咨询专家消费法宝",
     *   produces={"application/json"},
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(in="formData",name="cost",type="integer",description="消费法宝数量",required=true),
     *   @SWG\Response(response="201", description="成功"),
     *   @SWG\Response(response="401", description="未授权")
     * )
     */
    public function store(Request $request)
    {
        Member::create(array_merge($request->all(), ['user_id' => Auth::guard('api')->id()]));
        $this->ingots->update(config('ingots.vip'),'使用VIP通道咨询专家消耗法宝',2);
        return $this->setStatusCode('201')->success('VIP通道开通成功');
    }

}
