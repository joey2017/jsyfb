<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\ArticleRequest;
use App\Http\Resources\Api\ArticleResource;
use App\Models\Article;
use Illuminate\Support\Facades\Auth;

class ArticleController extends Controller
{
    public function index()
    {
        $articles = Article::paginate(5);
        return ArticleResource::collection($articles);
    }

    public function show(Article $article)
    {
        return $this->success(new ArticleResource($article));
    }

    public function store(ArticleRequest $request)
    {

        Article::create(array_merge($request->all(),['user_id' => Auth::guard('api')->id()]));

        return $this->setStatusCode(201)->success('提交成功');
    }

}
