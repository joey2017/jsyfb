<?php

namespace App\Http\Controllers\Api;

use App\Models\IngotsLog;
use App\Models\Member;
use App\Models\SystemConfig;
use App\Services\IngotsService;
use App\Services\NoticeService;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class MemberController extends Controller
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
     * MemberController constructor.
     * @param IngotsService $ingotsService
     * @param NoticeService $noticeService
     */
    public function __construct(IngotsService $ingotsService, NoticeService $noticeService)
    {
        $this->ingots = $ingotsService;
        $this->notice = $noticeService;
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
     *   @SWG\Response(response="401", description="未授权"),
     *   @SWG\Response(response="500", description="服务器错误")
     * )
     */
    public function store(Request $request)
    {
        try {
            DB::beginTransaction();
            $value = SystemConfig::where('key', '=', 'vip_ingots')->first()->value;
            Member::create(array_merge($request->all(), ['user_id' => Auth::guard('api')->id()]));
            $this->ingots->update($value, '使用VIP通道咨询专家消耗法宝', IngotsLog::TYPE_DECRE, Auth::guard('api')->user());
            $this->notice->add('咨询专家', '使用VIP通道咨询专家消耗' . $value . '个法宝', Auth::guard('api')->id(), 2);
        } catch (PDOException $exception) {
            DB::rollBack();
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
            return $this->failed('VIP通道开通失败，请稍后重试', 500);
        }
        DB::commit();
        return $this->created('VIP通道开通成功');
    }

}
