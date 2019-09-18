<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\UserSignResource;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;

class UserSignController extends Controller
{

    public function show(User $user)
    {
        //$sign = UserSign::firstOrCreate(['user_id' => $user->id]);
        $sign = $user->userSign()->first();
        return $this->success(new UserSignResource($sign));
    }

    public function update(User $user)
    {
        try {
            $day = Carbon::now();
            $sign = $user->userSign()->first();
            $sign->successive_sign_count += 1;
            $sign->count                 += 1;
            $sign->week_count            += 1;
            $sign->last_sign_time        = $day;
            $sign->updated_at            = $day;

            if (time() - strtotime($sign->last_sign_time) < 86400) {
                return $this->failed('您今天已经签到过了');
            }

            if ($sign->save()) {

                //Todo获得法宝

                return $this->setStatusCode(201)->success('签到成功');
            }

        } catch (\PDOException $e) {
           /* $monolog = Log::getMonolog();
            $monolog->popHandler();
            Log::useFiles(storage_path('logs/mysql/test.log'));*/
            Log::error('数据库错误：'.$e->getMessage(),['msg' => $e->getTraceAsString()]);
        }

        return $this->failed('签到失败,请稍后重试',500);
    }
}
