<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\ArticleResource;
use App\Models\Article;

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

}
