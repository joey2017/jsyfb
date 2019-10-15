<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\UserRequest;
use App\Http\Resources\Api\BrowseHistoryResource;
use App\Http\Resources\Api\UserResource;
use App\Models\BrowseHistory;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;

class UserController extends Controller
{
    /**
     * @SWG\Get(
     *     path="/users",
     *     summary="用户资料管理",
     *     tags={"User"},
     *     description="用户资料列表",
     *     operationId="user.index",
     *     produces={"application/json"},
     *     @SWG\Parameter(name="page",in="query",description="分页编号,默认1",type="integer"),
     *     @SWG\Parameter(name="pagesize",in="query",description="每页显示条数,默认10",type="integer"),
     *     @SWG\Response(
     *         response=200,
     *         description="用户列表",
     *         @SWG\Schema(
     *            type="json",
     *            @SWG\Property(
     *                 property="pages",
     *                 @SWG\Property(property="totalnum",type="integer",description="记录总数"),
     *                 @SWG\Property(property="totalpage",type="integer",description="总页数"),
     *                 @SWG\Property(property="pagesize",type="integer",description="每页显示记录数"),
     *                 @SWG\Property(property="page",type="integer",description="当前页数"),
     *            ),
     *            @SWG\Property(
     *               property="lists",
     *               @SWG\Items(
     *                  @SWG\Property(property="id",type="integer",description="id",),
     *                  @SWG\Property(property="username",type="string",description="用户名"),
     *                  @SWG\Property(property="nickname",type="string",description="昵称"),
     *                  @SWG\Property(property="avatar",type="string",description="头像"),
     *                  @SWG\Property(property="mobile",type="string",description="手机号码"),
     *                  @SWG\Property(property="descr",type="string",description="描述"),
     *               )
     *            ),
     *         ),
     *     ),
     *     @SWG\Response(response=422,description="error")
     * )
     */
    public function index()
    {
        $users = User::paginate(3);
        //无分页信息
        //return $this->success(UserResource::collection($users));
        return UserResource::collection($users);
    }

    /**
     * @SWG\Get(
     *   path="/users/{id}",
     *   tags={"User"},
     *   summary="用户详情",
     *   description="用户详情接口",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path",description="用户id"),
     *   @SWG\Response(
     *     response=200,
     *     description="成功"
     *   )
     * )
     */
    public function show(User $user)
    {
        return $this->success(new UserResource($user));
    }

    /**
     * @SWG\Post(
     *   path="/users",
     *   tags={"User"},
     *   summary="用户注册",
     *   description="用户注册接口",
     *   @SWG\Parameter(name="username", type="string", required=true, in="formData", description="用户名"),
     *   @SWG\Parameter(name="password", type="string", required=true, in="formData", description="登录密码"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function store(UserRequest $userRequest)
    {
        User::create($userRequest->all());
        return $this->setStatusCode(201)->success('用户注册成功');
    }

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
            $user->last_token = $token;
            $user->login_num += 1;
            $user->last_login_ip = $request->getClientIp();
            $user->last_login_time = date('Y-m-d H:i:s');
            $user->save();
            return $this->setStatusCode(201)->success(['token' => 'Bearer ' . $token,'user' => new UserResource($user)]);
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
        return $this->success('退出成功...');
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
        $user = Auth::guard('api')->user();
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
            return $this->failed('禁止访问',403);
        }
        $historys = BrowseHistory::where('user_id',$user->id)->paginate(5);
        return BrowseHistoryResource::collection($historys);
    }

}
