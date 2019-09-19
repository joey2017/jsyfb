<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\AnswerListResource;
use App\Models\AnswerList;

class AnswerListController extends Controller
{
    public function index()
    {
        $lists = AnswerList::paginate(5);
        return AnswerListResource::collection($lists);
    }

    public function show(AnswerList $answerList)
    {
        return $this->success(new AnswerListResource($answerList));
    }

}
