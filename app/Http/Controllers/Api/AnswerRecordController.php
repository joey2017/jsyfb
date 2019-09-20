<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\AnswerRecordRequest;
use App\Http\Resources\Api\AnswerRecordResource;
use App\Models\AnswerList;
use App\Models\AnswerRecord;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class AnswerRecordController extends Controller
{
    public function index()
    {
        $records = AnswerRecord::where('user_id',Auth::guard('api')->id())->paginate(5);
        return AnswerRecordResource::collection($records);
    }

    public function show(AnswerRecord $record)
    {
        return $this->success(new AnswerRecordResource($record));
    }

    public function store(AnswerRecordRequest $request)
    {
        $answer = AnswerList::findOrFail($request->input('answer_list_id'));

        $data = ['score' => 0,'correct' => $answer->correct];

        if ($answer->correct == $request->input('answer')) {
            $data['score'] = 1;
        }

        AnswerRecord::create(array_merge(
            $request->all(),
            ['user_id' => Auth::guard('api')->id(),'date' => Carbon::now()->toDateString()],
            $data
        ));
        return $this->setStatusCode(201)->success('提交成功');
    }

}
