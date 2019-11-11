<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\AdviceCommentRequest;
use App\Http\Resources\Api\AttentionResource;
use App\Http\Resources\Api\BrowseHistoryResource;
use App\Http\Resources\Api\IngotLogResource;
use App\Http\Resources\Api\NotaryAdviceResource;
use App\Http\Resources\Api\SpecialistAdviceResource;
use App\Http\Resources\Api\UserResource;
use App\Models\Attention;
use App\Models\BrowseHistory;
use App\Models\Ingots;
use App\Models\IngotsLog;
use App\Models\NotaryAdvice;
use App\Models\NotaryAdviceComment;
use App\Models\Notice;
use App\Models\SpecialistAdvice;
use App\Models\SpecialistAdviceComment;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;

class UserController extends Controller
{
    /**
     * @SWG\Post(
     *   path="/login",
     *   tags={"User"},
     *   summary="登录接口(用户名+密码)",
     *   description="用户登录接口,账号可为 用户名 或 手机号",
     *   @SWG\Parameter(name="username", type="string", required=true, in="formData", description="登录用户名/手机号"),
     *   @SWG\Parameter(name="password", type="string", required=true, in="formData", description="登录密码"),
     *   @SWG\Parameter(name="client_type", type="integer", required=false, in="formData",
     *     description="调用此接口的客户端类型: 1-Android, 2-IOS. 非必填,所以 required 写了 false"),
     *   @SWG\Response(response=201,description="成功"),
     *   @SWG\Response(response=400,description="账号或密码错误"),
     * )
     */
    public function login(Request $request)
    {

        $token = Auth::guard('api')->attempt(['username' => $request->username, 'password' => $request->password, 'status' => User::NORMAL]);
        if ($token) {
            // 先检查原先是否有存token，有就先失效，再存入新token
            $user = Auth::guard('api')->user();
            if ($user->last_token) {
                try {
                    Auth::guard('api')->setToken($user->last_token)->invalidate();
                } catch (TokenExpiredException $e) {
                    //因为让一个过期的token再失效，会抛出异常，所以我们捕捉异常，不需要做任何处理
                }
            }
            $user->last_token      = $token;
            $user->login_num       += 1;
            $user->last_login_ip   = $request->getClientIp();
            $user->last_login_time = date('Y-m-d H:i:s');
            $user->save();

            // 未读消息数量
            $user->notices_count = Notice::where([['status', 0], ['user_id', $user->id]])->count();
            return $this->setStatusCode(201)->success(['token' => 'Bearer ' . $token, 'user' => new UserResource($user)], 'success', '登录成功');
        } else {
            return $this->failed('帐号或密码错误', 400);
        }
    }

    /**
     * @SWG\Get(
     *   path="/logout",
     *   tags={"User"},
     *   summary="登出",
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function logout()
    {
        Auth::guard('api')->logout();
        return $this->success('', 'success', '退出成功...');
    }

    /**
     * @SWG\Get(
     *   path="/users/info",
     *   tags={"User"},
     *   produces={"application/json"},
     *   summary="个人信息",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function info()
    {
        $user                = Auth::guard('api')->user();
        $user->notices_count = Notice::where([['status', Notice::INVALID], ['user_id', $user->id]])->count();
        return $this->success(new UserResource($user));
    }


    /**
     * @SWG\Get(
     *   path="/users/browse-historys/{id}",
     *   tags={"User"},
     *   produces={"application/json"},
     *   summary="浏览记录",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="用户id"),
     *   @SWG\Response(response=200,description="成功"),
     *   @SWG\Response(response=403,description="禁止访问"),
     *   @SWG\Response(response=404,description="未找到")
     * )
     */
    public function browseHistorys(User $user)
    {
        if (Auth::guard('api')->id() != $user->id) {
            return $this->failed('禁止访问', 403);
        }
        $historys = BrowseHistory::where('user_id', $user->id)->orderBy('id', 'desc')->paginate(10);
        return $this->success(BrowseHistoryResource::collection($historys));
    }


    /**
     * @SWG\Get(
     *   path="/attentions",
     *   tags={"User"},
     *   summary="关注律师列表",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response="200",description="获取律师列表")
     *
     * )
     */
    public function attention()
    {
        $attentions = Attention::where('user_id', Auth::guard('api')->id())->orderBy('id', 'desc')->paginate(10);
        return $this->success(AttentionResource::collection($attentions));
    }

    /**
     * @SWG\Get(
     *   path="/users/ingots/log",
     *   tags={"User"},
     *   summary="法宝流水记录列表",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response="200",description="获取法宝流水记录")
     *
     * )
     */
    public function ingotsLog()
    {
        $ingotLogs = IngotsLog::where([['user_id', Auth::guard('api')->id()], ['status', IngotsLog::NORMAL]])->orderBy('id', 'desc')->paginate(10);
        return $this->success(IngotLogResource::collection($ingotLogs));
    }

    /**
     * @SWG\Get(
     *   path="/users/ingots",
     *   tags={"User"},
     *   summary="个人法宝数量",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response="200",description="个人法宝数量")
     *
     * )
     */
    public function ingots()
    {
        $ingots = Ingots::firstOrCreate(['user_id' => Auth::guard('api')->id()], ['quantity' => 0]);
        return $this->success(['quantity' => $ingots->quantity]);
    }


    /**
     * @SWG\Get(
     *   path="/users/services/notarys",
     *   tags={"User"},
     *   summary="公证处服务",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response="200",description="公证处服务列表")
     *
     * )
     */
    public function notaryServices(Request $request)
    {
        $condition    = array_merge(['user_id' => Auth::guard('api')->id()], array_filter($request->all()));
        $notaryAdvice = NotaryAdvice::with([
            'notary'     => function ($query) {
                $query->select('id', 'name', 'city_code');
            }, 'payment' => function ($query) {
                $query->select('id', 'cost', 'type');
            }
        ])->where($condition)->paginate(10);
        return $this->success(NotaryAdviceResource::collection($notaryAdvice));
    }


    /**
     * @SWG\Get(
     *   path="/users/services/specialists",
     *   tags={"User"},
     *   summary="专家服务",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="status", type="integer", required=true, in="path", description="服务状态：0禁用1进行中2待评价3已完成"),
     *   @SWG\Response(response="200",description="专家服务列表")
     *
     * )
     */
    public function specialistServices(Request $request)
    {
        $condition        = array_merge(['user_id' => Auth::guard('api')->id()], array_filter($request->all()));
        $specialistAdvice = SpecialistAdvice::with([
            'laywer'     => function ($query) {
                $query->select('id', 'name', 'cate_id', 'company', 'city_code');
            }, 'payment' => function ($query) {
                $query->select('id', 'cost', 'type');
            }
        ])->where($condition)->paginate(10);
        return $this->success(SpecialistAdviceResource::collection($specialistAdvice));
    }

    /**
     * @SWG\Post(
     *   path="/users/services/notary-comments",
     *   tags={"User"},
     *   summary="公证处服务评价",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="advice_id", type="integer", required=true, in="formData", description="咨询id"),
     *   @SWG\Parameter(name="service_score", type="integer", required=true, in="formData", description="服务评分:0-5"),
     *   @SWG\Parameter(name="profession_score", type="integer", required=true, in="formData", description="专业评分：0-5"),
     *   @SWG\Parameter(name="is_solve", type="integer", required=true, in="formData", description="是否解决您的问题：是否解决：1未解决，2已解决"),
     *   @SWG\Parameter(name="comment", type="integer", required=false, in="formData", description="评价内容"),
     *   @SWG\Response(response="201",description="服务评价添加成功"),
     *   @SWG\Response(response="401",description="未授权"),
     *   @SWG\Response(response="403",description="不允许评价"),
     *   @SWG\Response(response="501",description="保存失败，请稍后重试"),
     *
     * )
     */
    public function notaryAdviceComment(AdviceCommentRequest $request)
    {
        $comment = NotaryAdviceComment::create($request->all());
        $comment->forceFill(['user_id' => Auth::guard('api')->id(), 'created_at' => date('Y-m-d H:i:s')]);
        return $comment->save() ? $this->created('保存成功') : $this->failed('保存失败，请稍后重试', 501);
    }

    /**
     * @SWG\Post(
     *   path="/users/services/specialist-comments",
     *   tags={"User"},
     *   summary="专家服务评价",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="advice_id", type="integer", required=true, in="formData", description="咨询id"),
     *   @SWG\Parameter(name="service_score", type="integer", required=true, in="formData", description="服务评分:0-5"),
     *   @SWG\Parameter(name="profession_score", type="integer", required=true, in="formData", description="专业评分：0-5"),
     *   @SWG\Parameter(name="is_solve", type="integer", required=true, in="formData", description="是否解决您的问题：是否解决：1未解决，2已解决"),
     *   @SWG\Parameter(name="comment", type="integer", required=false, in="formData", description="评价内容"),
     *   @SWG\Response(response="201",description="服务评价添加成功"),
     *   @SWG\Response(response="401",description="未授权"),
     *   @SWG\Response(response="403",description="不允许评价"),
     *   @SWG\Response(response="501",description="保存失败，请稍后重试"),
     *
     * )
     */
    public function specialistAdviceComment(AdviceCommentRequest $request)
    {
        $comment = SpecialistAdviceComment::create($request->all());
        $comment->forceFill(['user_id' => Auth::guard('api')->id(), 'created_at' => date('Y-m-d H:i:s')]);
        //$comment->fillable(['user_id', 'created_at']);
        //$comment->fill(['user_id' => Auth::guard('api')->id(), 'created_at' => date('Y-m-d H:i:s')]);
        return $comment->save() ? $this->created('保存成功') : $this->failed('保存失败，请稍后重试', 501);
    }

}
