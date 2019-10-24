<?php

namespace App\Http\Controllers\Api;

use App\Models\Attention;
use App\Services\NoticeService;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class AttentionController extends Controller
{

    /**
     * @var NoticeService
     */
    protected $notice;


    /**
     * MemberController constructor.
     * @param NoticeService $noticeService
     */
    public function __construct(NoticeService $noticeService)
    {
        $this->notice = $noticeService;
    }

    /**
     *
     * @SWG\Post(
     *   path="/attentions",
     *   tags={"Tool"},
     *   summary="用户关注律师保存",
     *   description="用户关注律师保存",
     *   produces={"application/json"},
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(in="formData",name="laywer_id",type="integer",description="律师id",required=true),
     *   @SWG\Response(response="201", description="成功"),
     *   @SWG\Response(response="401", description="未授权"),
     *   @SWG\Response(response="500", description="服务器错误")
     * )
     */
    public function store(Request $request)
    {
        $laywer_id = $request->input('laywer_id','');
        if ($laywer_id == '') {
            return $this->failed('缺少律师id参数');
        }
        try {
            DB::beginTransaction();
            if (Attention::where([['user_id', Auth::guard('api')->id()], ['laywer_id', $laywer_id]])->exists()) {
                return $this->failed('您已关注该律师，无需重复关注');
            }

            Attention::create(['user_id' => Auth::guard('api')->id(), 'laywer_id' => $laywer_id, 'created_at' => date('Y-m-d H:i:s')]);
            $this->notice->add('关注律师', '恭喜您关注律师成功', Auth::guard('api')->id());
        } catch (PDOException $exception) {
            DB::rollBack();
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
            return $this->failed('关注律师失败，请稍后重试', 500);
        }
        DB::commit();
        return $this->created('关注成功');
    }

    //todo 204状态码没有返回
    /**
     *
     * @SWG\Delete(
     *   path="/attentions/{id}",
     *   tags={"Tool"},
     *   summary="取消关注律师",
     *   description="取消关注律师",
     *   produces={"application/json"},
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response="204", description="成功"),
     *   @SWG\Response(response="401", description="未授权"),
     *   @SWG\Response(response="500", description="服务器错误")
     * )
     */
    public function destroy(Attention $attention)
    {
        $result = null;
        try {
            $result = $attention->delete();
        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
        }
        return $result > 0 ? $this->setStatusCode(204)->success('','success','取消关注成功') : $this->failed('取消关注失败，请稍后重试');
    }

}
