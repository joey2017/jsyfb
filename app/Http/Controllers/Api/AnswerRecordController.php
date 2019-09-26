<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\AnswerRecordRequest;
use App\Http\Resources\Api\AnswerRecordResource;
use App\Models\AnswerList;
use App\Models\AnswerRecord;
use App\Models\IngotsConfig;
use App\Services\IngotsService;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redis;

class AnswerRecordController extends Controller
{
    protected $ingots;

    public function __construct(IngotsService $ingotsService)
    {
        $this->ingots = $ingotsService;
    }

    /**
     * @SWG\Get(
     *   path="/answer/records",
     *   tags={"Misc"},
     *   summary="每日答题记录",
     *   description="答题记录列表",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index()
    {
        $records = AnswerRecord::where('user_id',Auth::guard('api')->id())->paginate(5);
        return AnswerRecordResource::collection($records);
    }

    /**
     * @SWG\Get(
     *   path="/answer/records/{id}",
     *   tags={"Misc"},
     *   summary="答题记录详情",
     *   description="答题记录详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="答题记录id"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show(AnswerRecord $record)
    {
        return $this->success(new AnswerRecordResource($record));
    }

    /**
     * @SWG\Post(
     *     path="/answer/records",
     *     tags={"Misc"},
     *     summary="{答题记录保存}",
     *     description="每日答题记录保存",
     *     operationId="answer-records.store",
     *     produces={"application/json"},
     *     security={
     *      {
     *          "Bearer":{}
     *      }
     *     },
     *     @SWG\Parameter(name="answer_list_id",in="formData",description="请求参数-问题id",required=true,type="integer"),
     *     @SWG\Parameter(name="question",in="formData",description="请求参数-问题题目",required=true,type="string"),
     *     @SWG\Parameter(name="answer",in="formData",description="请求参数-问题答案",required=true,type="string"),
     *     @SWG\Parameter(name="date",in="formData",description="请求参数-回答日期",required=false,type="string",format="date"),
     *     @SWG\Response(response=201,description="操作成功"),
     *     @SWG\Response(response=400,description="参数错误"),
     *     @SWG\Response(response=401,description="未授权")
     * )
     */
    public function store(AnswerRecordRequest $request)
    {
        $answer = AnswerList::findOrFail($request->input('answer_list_id'));

        $data = ['score' => 0,'correct' => $answer->correct];

        if ($answer->correct == $request->input('answer')) {
            $data['score'] = 1;
            $this->updateIngots();
        }

        AnswerRecord::create(array_merge(
            $request->all(),
            ['user_id' => Auth::guard('api')->id(),'date' => Carbon::now()->toDateString()],
            $data
        ));

        return $this->setStatusCode(201)->success(['提交成功',$data['score']]);
    }

    protected function updateIngots()
    {
        //获得法宝
        $config = IngotsConfig::getConfigByKey('game');
        $times = Redis::get('ingots_game_' . Auth::guard('api')->id());

        if ($config->limitation == 0 || ($config->limitation > 0 && (int)$times < $config->limitation)) {
            $this->ingots->update($config->value, '答题正确获得法宝', 1);
            Redis::set('ingots_game_' . Auth::guard('api')->id(), $times + 1, 'EX',  mktime(23, 59, 59, date("m"), date("d"), date("Y")));
        }

    }

}
