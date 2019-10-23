<?php

namespace App\Http\Controllers\Api;

use function App\Helpers\getSystemConfigByKey;
use App\Http\Requests\Api\AnswerRecordRequest;
use App\Http\Resources\Api\AnswerRecordResource;
use App\Http\Resources\Api\AnswerScoreResource;
use App\Models\AnswerList;
use App\Models\AnswerRecord;
use App\Models\AnswerScore;
use App\Models\User;
use App\Services\IngotsService;
use App\Services\NoticeService;
use App\Services\ScoreService;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class AnswerRecordController extends Controller
{
    protected $ingots;

    protected $notice;

    protected $score;

    public function __construct(IngotsService $ingotsService, NoticeService $noticeService, ScoreService $scoreService)
    {
        $this->ingots = $ingotsService;
        $this->notice = $noticeService;
        $this->score  = $scoreService;
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
        $records = AnswerRecord::where('user_id', Auth::guard('api')->id())->paginate(10);
        return $this->success(AnswerRecordResource::collection($records));
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
     *     @SWG\Parameter(name="option",in="formData",description="请求参数-问题答案选项(A,B,C,D)",required=true,type="string"),
     *     @SWG\Parameter(name="date",in="formData",description="请求参数-回答日期(年月日)",required=false,type="string",format="date"),
     *     @SWG\Response(response=201,description="操作成功"),
     *     @SWG\Response(response=400,description="参数错误"),
     *     @SWG\Response(response=401,description="未授权")
     * )
     */
    public function store(AnswerRecordRequest $request)
    {
        $id     = $request->input('answer_list_id');
        $answer = AnswerList::findOrFail($id);

        if ($result = AnswerRecord::where([['user_id', Auth::guard('api')->id()], ['answer_list_id', $id], ['correct', $answer->correct]])->exists()) {
            return $this->failed('你已回答过该问题，请勿重复作答', 400);
        }

        $data = ['score' => 0, 'correct' => $answer->correct];
        if (strtoupper($answer->correct) == strtoupper($request->input('option'))) {
            $data['score'] = 1 * getSystemConfigByKey('score_proportion');
            $this->score->update($data['score']);
            $this->ingots->limitation('game', '答题正确获得法宝');
            $this->notice->add('每日答题', '游戏闯关每日答题获得' . $this->ingots->getValueByKey('game')->value . '个法宝', Auth::guard('api')->id());
        }

        AnswerRecord::create(array_merge(
            $request->all(),
            ['user_id' => Auth::guard('api')->id(), 'date' => Carbon::now()->toDateString()],
            $data
        ));

        return $this->setStatusCode(201)->success($answer->correct,'success','提交成功');
    }


    /**
     * @SWG\Get(
     *   path="/answer/ranking",
     *   tags={"Misc"},
     *   summary="每日答题记录排行榜",
     *   description="每日答题记录排行榜",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function ranking()
    {
        $scores = AnswerScore::where('date', date('Y-m-d'))->orderBy('score','desc')->paginate(10);
        return $this->success(AnswerScoreResource::collection($scores));
    }

    /**
     * @SWG\Get(
     *   path="/answer/totalranking",
     *   tags={"Misc"},
     *   summary="每日答题总分排行榜",
     *   description="每日答题总分排行榜",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function totalranking()
    {
        return $this->success(User::where([['status', 1], ['is_deleted', 0]])->select(['nickname', 'avatar', 'score'])->orderBy('score','desc')->paginate(10));
    }
}
