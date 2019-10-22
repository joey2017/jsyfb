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
     *   @SWG\Parameter(name="rawData", type="string", required=true, in="formData", description="用户微信原始信息"),
     *   @SWG\Parameter(name="signature", type="string", required=true, in="formData", description="数据签名"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function getWxUserInfo(Request $request)
    {
        //encryptedData 和 iv 在小程序端使用 wx.getUserInfo 获取
        $code          = $request->input('code', '');
        $encryptedData = $request->input('encryptedData', '');
        $iv            = $request->input('iv', '');
        $icode         = $request->get('icode', '');
        $rawData       = json_decode($request->input('rawData', ''), true);

        //根据 code 获取用户 session_key 等信息, 返回用户openid 和 session_key
        $userInfo = $this->wxxcx->getLoginInfo($code);

        $decryData = [];
        //获取解密后的用户信息
        if (isset($userInfo['session_key'])) {
            try {
                $decryData = $this->wxxcx->getUserInfo($encryptedData, $iv);
                Log::info('用户解密数据为：', ['info' => $decryData]);
            } catch (\Exception $exception) {
                Log::error('解密用户数据失败', ['error' => $exception->getMessage()]);
            }
        } else {
            Log::error('获取session_key失败', $userInfo);
        }

        $decryData = json_decode($decryData,true);
        $inviter = '';

        if ($icode !== '') {
            $inviter = User::where('invitation_code', $icode)->first();
        }

        if ($existUser = User::where('openid', $userInfo['openid'])->first()) {
            $token = auth('api')->login($existUser);
            //$token = JWTAuth::fromUser($existUser);
            $statusCode = 200;
        } else {
            $token = auth('api')->login($this->createUser($request, $userInfo, $decryData['openId'] ? $decryData : $rawData, $inviter ? $inviter->id : 0));
            //$token = JWTAuth::fromUser($this->createUser($request, $rowData, $inviter ? $inviter->id : 0));
            $statusCode = 201;
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
            return $this->setStatusCode($statusCode)->success(['token' => 'Bearer ' . $token, 'user' => new UserResource($user)]);
        }
        return $this->failed('登录失败,请稍后重试');
    }

    /**
     * @param $request
     * @param $data
     * @param null $inviter_id
     * @return $this|\Illuminate\Database\Eloquent\Model
     */
    protected function createUser($request, $row, $data, $inviter_id = null)
    {
        return User::create([
            'username'        => $row['openid'],
            'password'        => bcrypt($row['openid']),
            //'mobile'          => $data['mobile'],
            'openid'          => $row['openid'],
            'nickname'        => $data['nickName'],
            'avatar'          => $data['avatarUrl'],
            'gender'          => $data['gender'],
            'raw_data'        => json_encode($data),
            'session_key'     => $row['session_key'],
            'invitation_code' => substr(uniqid(), 7),
            'inviter_id'      => $inviter_id,
            'status'          => 1,
            'reg_ip'          => $request->getClientIp(),
        ]);

    }
}
