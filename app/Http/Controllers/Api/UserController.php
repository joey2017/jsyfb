<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\UserRequest;
use App\Http\Resources\Api\UserResource;
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
     *     tags={"用户列表"},
     *     description="用户资料列表",
     *     operationId="user.index",
     *     produces={"application/json"},
     *     @SWG\Parameter(
     *         name="page",
     *         in="query",
     *         description="分页编号,默认1",
     *         type="integer",
     *     ),
     *     @SWG\Parameter(
     *         name="pagesize",
     *         in="query",
     *         description="每页显示条数,默认10",
     *         type="integer",
     *     ),
     *     @SWG\Response(
     *         response=200,
     *         description="用户列表",
     *         @SWG\Schema(
     *            type="json",
     *            @SWG\Property(
     *                  property="pages",
     *                  @SWG\Property(
     *                     property="totalnum",
     *                     type="integer",
     *                     description="记录总数",
     *                 ),
     *                 @SWG\Property(
     *                     property="totalpage",
     *                     type="integer",
     *                     description="总页数",
     *                 ),
     *                 @SWG\Property(
     *                     property="pagesize",
     *                     type="integer",
     *                     description="每页显示记录数",
     *                 ),
     *                 @SWG\Property(
     *                     property="page",
     *                     type="integer",
     *                     description="当前页数",
     *                 ),
     *            ),
     *            @SWG\Property(
     *               property="lists",
     *               @SWG\Items(
     *                  @SWG\Property(
     *                     property="id",
     *                     type="integer",
     *                     description="id",
     *                  ),
     *                  @SWG\Property(
     *                     property="source",
     *                     type="string",
     *                     description="数据来源",
     *                  ),
     *                  @SWG\Property(
     *                     property="industry_no",
     *                     type="integer",
     *                     description="行业编号",
     *                  ),
     *                  @SWG\Property(
     *                     property="channel_id",
     *                     type="integer",
     *                     description="渠道id",
     *                  ),
     *                  @SWG\Property(
     *                     property="name",
     *                     type="string",
     *                     description="名称",
     *                  ),
     *              )
     *            ),
     *         ),
     *     ),
     *     @SWG\Response(
     *         response=422,
     *         description="error",
     *     )
     * )
     */
    public function index()
    {
        $users = User::paginate(3);
        //无分页信息
        //return $this->success(UserResource::collection($users));
        return UserResource::collection($users);
    }

    public function show(User $user)
    {
        return $this->success(new UserResource($user));
    }

    public function store(UserRequest $userRequest)
    {
        User::create($userRequest->all());
        return $this->setStatusCode(201)->success('用户注册成功');
    }

    public function login(Request $request)
    {

        $token = Auth::guard('api')->attempt(['username' => $request->username, 'password' => $request->password, 'status' => User::NORMAL]);
        if ($token) {
            // 先检查原先是否有存token，有就先失效，再存入新token
            //dd($user = Auth::user());
            $user = Auth::guard('api')->user();
            if ($user->last_token) {
                try {
                    Auth::guard('api')->setToken($user->last_token)->invalidate();
                } catch (TokenExpiredException $e) {
                    //因为让一个过期的token再失效，会抛出异常，所以我们捕捉异常，不需要做任何处理
                }
            }
            $user->last_token = $token;
            $user->save();
            return $this->setStatusCode(201)->success(['token' => 'Bearer ' . $token]);
        } else {
            return $this->failed('帐号或密码错误', 400);
        }
    }

    //用户退出
    public function logout()
    {
        Auth::guard('api')->logout();
        return $this->success('退出成功...');
    }

    //返回当前登录用户信息
    public function info()
    {
        $user = Auth::guard('api')->user();
        return $this->success(new UserResource($user));
    }
}
