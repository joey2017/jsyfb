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

    /**
     * @SWG\Post(
     *     path="/signs/{id}",
     *     summary="签到",
     *     tags={"签到"},
     *     description="签到操作",
     *     operationId="signs.update",
     *     produces={"application/json"},
     *     @SWG\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         description="The person's id",
     *         type="integer"
     *     ),
     *     @SWG\Response(
     *         response=201,
     *         description="success"
     *     ),
     *     @SWG\Response(
     *         response=406,
     *         description="Unauthorized"
     *     ),
     *     @SWG\Response(
     *         response=500,
     *         description="server error"
     *     )
     * )
     */
    public function update(User $user)
    {
        try {
            $day = Carbon::now();
            $sign = $user->userSign()->first();

            if ($day->toDateString() == Carbon::parse($sign->last_sign_time)->toDateString()) {
                return $this->failed('您今天已经签到过了');
            }

            $sign->successive_sign_count += 1;
            $sign->count                 += 1;
            $sign->week_count            += 1;
            $sign->updated_at            = $day;
            $sign->last_sign_time        = $day;

            if ($sign->save()) {

                //Todo获得法宝

                return $this->setStatusCode(201)->success('签到成功');
            }

        } catch (\PDOException $e) {
            //Log::error('数据库错误：'.$e->getMessage(),['msg' => $e->getTraceAsString()]);
            Log::channel('mysqllog')->error('mysql错误：',['msg' => $e->getMessage()]);
        }

        return $this->failed('签到失败,请稍后重试',500);
    }
}
