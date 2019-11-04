<?php

namespace App\Http\Controllers\Api;

use App\Models\SpecialistAdvice;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class SpecialistAdviceController extends Controller
{
    /**
     *
     * @SWG\Post(
     *   path="/specialist/advices",
     *   summary="专家咨询保存",
     *   tags={"Tool"},
     *   description="专家咨询保存",
     *   produces={"application/json"},
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(in="formData",name="laywer_id",type="integer",description="专家id",required=true),
     *   @SWG\Parameter(in="formData",name="username",type="string",description="姓名",required=true),
     *   @SWG\Parameter(in="formData",name="sex",type="integer",description="性别：1男2女",required=true),
     *   @SWG\Parameter(in="formData",name="mobile",type="string",description="手机",required=true),
     *   @SWG\Parameter(in="formData",name="type",type="integer",description="案件类型：1房地产2公司诉讼3婚姻家庭4医药行业5劳动关系6民事纠纷7刑事纠纷8其他",required=true),
     *   @SWG\Parameter(in="formData",name="question",type="string",description="问题描述",required=true),
     *   @SWG\Response(response="201", description="成功"),
     *   @SWG\Response(response="401", description="未授权"),
     *   @SWG\Response(response="500", description="服务器错误")
     * )
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'laywer_id' => 'required|integer',
            'username'  => 'required|string|min:2|max:10',
            'sex'       => 'required|integer',
            'mobile'    => ['required', 'regex:/^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$/'],
            'type'      => 'required|integer',
            'question'  => 'required|string',
        ]);
        try {
            DB::beginTransaction();
            SpecialistAdvice::create(array_merge($request->all(), ['user_id' => Auth::guard('api')->id()]));
        } catch (PDOException $exception) {
            DB::rollBack();
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
            return $this->failed('保存失败，请稍后重试', 500);
        }
        DB::commit();
        return $this->created('保存成功');
    }
}
