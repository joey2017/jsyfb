<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\UserResource;
use App\Models\IngotsConfig;
use App\Models\IngotsLog;
use App\Models\User;
use App\Services\IngotsService;
use App\Services\NoticeService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Iwanli\Wxxcx\Wxxcx;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Facades\JWTAuth;

class WechatController extends Controller
{
    /**
     * @var Wxxcx
     */
    protected $wxxcx;

    /**
     * @var IngotsService
     */
    protected $ingots;

    /**
     * @var NoticeService
     */
    protected $notice;

    /**
     * WechatController constructor.
     * @param Wxxcx $wxxcx
     * @param IngotsService $ingotsService
     * @param NoticeService $noticeService
     */
    function __construct(Wxxcx $wxxcx, IngotsService $ingotsService, NoticeService $noticeService)
    {
        $this->wxxcx  = $wxxcx;
        $this->ingots = $ingotsService;
        $this->notice = $noticeService;
    }

    /**
     * @SWG\Post(
     *   path="/getwxuserinfo",
     *   tags={"Misc"},
     *   summary="小程序授权登录接口",
     *   description="小程序授权登录接口",
     *   @SWG\Parameter(name="code", type="string", required=true, in="formData", description="临时登录code"),
     *   @SWG\Parameter(name="encryptedData", type="string", required=true, in="formData", description="加密用户信息"),
     *   @SWG\Parameter(name="iv", type="string", required=true, in="formData", description="iv"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function getWxUserInfo(Request $request)
    {
        //code 在小程序端使用 wx.login 获取
        $code = $request->input('code', '');
        //encryptedData 和 iv 在小程序端使用 wx.getUserInfo 获取
        $encryptedData = $request->input('encryptedData', '');
        $iv            = $request->input('iv', '');

        $icode = $request->get('icode', '');

        //file_put_contents(__DIR__.'/userinfo.txt',json_encode($request->all()));

        //根据 code 获取用户 session_key 等信息, 返回用户openid 和 session_key
        $info = $this->wxxcx->getLoginInfo($code);

        Log::error('openid:', $info);

        //获取解密后的用户信息
        //response()->setStatusCode(201)->json();
        //return $this->wxxcx->getUserInfo($encryptedData, $iv);
        //$token = auth('api')->tokenById($this->createUser($request, json_decode($data))->user()->id);

        if (isset($info['session_key'])) {
            try {
                $data = $this->wxxcx->getUserInfo($encryptedData, $iv);
            } catch (\Exception $exception) {
                Log::channel('mysqllog')->error('获取session_key失败',['info' => $exception->getMessage()]);
            }
            if (isset($data['code'])) {
                Log::error('服务器解密数据失败', $data);
            }
        } else {
            Log::error('获取session_key失败', $info);
        }

        /*
         * 自定义生成token
        $payload = JWTFactory::make(['openid' => $data->openid]);
        $token = JWTAuth::encode($payload);
        */
        $inviter = '';

        if ($icode !== '') {
            $inviter = User::where('invitation_code', $icode)->first();
        }

        if ($existUser = User::where('openid', $data['openid'])->first()) {
            //$token = auth('api')->login($existUser);
            $token = JWTAuth::fromUser($existUser);
        } else {
            //$token = auth('api')->login($this->createUser($request, $data, $inviter->id));
            $token = JWTAuth::fromUser($this->createUser($request, $data, $inviter->id));
        }

        if ($token) {
            // 先检查原先是否有存token，有就先失效，再存入新token
            $user = auth('api')->user();
            if ($user->last_token) {
                try {
                    auth('api')->setToken($user->last_token)->invalidate();
                } catch (TokenExpiredException $e) {
                    //因为让一个过期的token再失效，会抛出异常，所以我们捕捉异常，不需要做任何处理
                }
            }
            $user->last_token      = $token;
            $user->login_num       += 1;
            $user->last_login_ip   = $request->getClientIp();
            $user->last_login_time = date('Y-m-d H:i:s');
            $user->save();

            // 邀请人获得法宝
            if ($inviter) {
                $this->ingots->update(IngotsConfig::getConfigByKey('invite')->value, '邀请好友注册获得法宝奖励', IngotsLog::TYPE_INCRE, $inviter);
                $this->notice->add('邀请好友注册获得法宝奖励', '邀请好友注册获得' . IngotsConfig::getConfigByKey('invite')->value . '法宝', $inviter->id);
            }
            return $this->setStatusCode(201)->success(['token' => 'Bearer ' . $token, 'user' => new UserResource($user)]);
        }
    }


    public function test()
    {

    }

    /**
     * @param $request
     * @param $data
     * @param null $inviter_id
     * @return $this|\Illuminate\Database\Eloquent\Model
     */
    protected function createUser($request, $data, $inviter_id = null)
    {
        return User::create([
            'username'        => $data['openid'],
            'password'        => bcrypt($data['openid']),
            'mobile'          => $data['mobile'],
            'openid'          => $data['openid'],
            'nickname'        => $data['nickname'],
            'avatar'          => $data['avatar'],
            'gender'          => $data['gender'],
            'invitation_code' => substr(uniqid(), 7),
            'inviter_id'      => $inviter_id,
            'reg_ip'          => $request->getClientIp(),
        ]);

    }
}
