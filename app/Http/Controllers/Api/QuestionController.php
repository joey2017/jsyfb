<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\QuestionResource;
use App\Models\Question;

class QuestionController extends Controller
{
    public function index()
    {
        $questions = Question::paginate(5);
        return QuestionResource::collection($questions);
    }
}
