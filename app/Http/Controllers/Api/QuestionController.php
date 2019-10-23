<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\QuestionResource;
use App\Models\Question;

class QuestionController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/questions",
     *   tags={"MainPage"},
     *   summary="问题列表",
     *   description="问题列表",
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
        $questions = Question::paginate(10);
        return $this->success(QuestionResource::collection($questions));
    }
}
