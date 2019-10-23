<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\ArticleResource;
use App\Models\Article;
use App\Models\BrowseHistory;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ArticleController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/articles",
     *   tags={"MainPage"},
     *   summary="热门资讯",
     *   description="热门资讯列表",
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
        $articles = Article::paginate(10);
        return $this->success(ArticleResource::collection($articles));
    }

    /**
     * @SWG\Get(
     *   path="/articles/{id}",
     *   tags={"MainPage"},
     *   summary="热门资讯详情",
     *   description="热门资讯详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path",description="资讯id"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show(Article $article)
    {
        try {
            DB::transaction(function() use ($article){
                $article->browse_count += 1;
                $article->save();
                BrowseHistory::create(['user_id' => Auth::guard('api')->id(), 'article_id' => $article->id]);
            });
        } catch (QueryException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
        }

        return $this->success(new ArticleResource($article));
    }

}
