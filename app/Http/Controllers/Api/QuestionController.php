<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\QuestionResource;
use App\Models\Question;

class QuestionController extends Controller
{

    public function index()
    {
        $questions = Question::paginate(10);
        return $this->success(QuestionResource::collection($questions));
    }
}
