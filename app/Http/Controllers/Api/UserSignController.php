<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\UserSignResource;
use App\Models\IngotsLog;
use App\Models\User;
use App\Models\UserSign;
use App\Services\IngotsService;
use App\Services\NoticeService;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class UserSignController extends Controller
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
     * UserSignController constructor.
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
     *   path="/signs/{id}",
     *   tags={"MainPage"},
     *   summary="签到页",
     *   description="签到详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="用户id"),
     *   @SWG\Response(response=200,description="成功"),
     *   @SWG\Response(response=404,description="未找到")
     * )
     */
    public function show(User $user)
    {
        $sign = UserSign::firstOrCreate(['user_id' => $user->id]);
        return $this->success(new UserSignResource($sign));
    }

    /**
     * @SWG\Post(
     *     path="/signs/{id}",
     *     summary="签到",
     *     tags={"MainPage"},
     *     description="签到操作",
     *     produces={"application/json"},
     *     security={
     *      {
     *          "Bearer":{}
     *      }
     *     },
     *     @SWG\Parameter(name="id",in="path",required=true,description="用户id",type="integer"),
     *     @SWG\Response(response=201,description="成功"),
     *     @SWG\Response(response=403,description="禁止访问"),
     *     @SWG\Response(response=406,description="未授权"),
     *     @SWG\Response(response=500,description="服务器错误")
     * )
     */
    public function update(User $user)
    {
        try {
            if ($user->id != Auth::guard('api')->id()) {
                return $this->failed('禁止访问', 403);
            }

            $day            = Carbon::now();
            $sign           = UserSign::firstOrCreate(['user_id' => $user->id], ['week_count' => 0]);
            $last_sign_time = $sign->last_sign_time ?? 0;
            if ($day->toDateString() == Carbon::parse($last_sign_time)->toDateString()) {
                return $this->failed('您今天已经签到过了');
            }

            $sign->successive_sign_count += 1;
            $sign->count                 += 1;
            $sign->week_count            += 1;
            $sign->updated_at            = $day;
            $sign->last_sign_time        = $day;

            if ($sign->save()) {

                //获得法宝
                //$this->ingots->limitation('sign', '每日签到获得法宝');
                $this->ingots->update($this->ingots->getValueByKey('sign')->value, '每日签到获得法宝', IngotsLog::TYPE_INCRE, $user);
                //法宝消息
                $this->notice->add('签到成功', '今日签到共获得' . $this->ingots->getValueByKey('sign')->value . '个法宝', Auth::guard('api')->id(), 2);
                return $this->created('签到成功');
            }

        } catch (\PDOException $e) {
            Log::channel('mysqllog')->error('mysql错误：', ['msg' => $e->getMessage()]);
        }

        return $this->failed('签到失败,请稍后重试', 500);
    }
}
