<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\ArticleResource;
use App\Http\Resources\Api\LaywerResource;
use App\Models\Article;
use App\Models\ArticleComment;
use App\Models\ArticleLike;
use App\Models\BrowseHistory;
use App\Models\Laywer;
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
        $articles = Article::orderBy('id', 'desc')->paginate(10);
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
            DB::transaction(function () use ($article) {
                $article->browse_count += 1;
                $article->save();
                BrowseHistory::create(['user_id' => Auth::guard('api')->id(), 'article_id' => $article->id]);
            });
        } catch (QueryException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
        }
        $admin_name         = $article->adminer()->first()->name ?? '';
        $info               = $article->toArray();
        //$info['content']    = strip_tags($info['content']);
        $info['images']     = env('APP_UPLOAD_PATH') . '/' . $info['images'];
        $info['status']     = Article::getStatusName((int)$info['status']);
        $info['admin_name'] = $admin_name;
        $info['is_like']    = false;

        if ($info['like_count'] > 0) {
            if (ArticleLike::where([['user_id', Auth::guard('api')->id()], ['article_id', $info['id']]])->exists()) {
                $info['is_like'] = true;
            }
        }

        $comments['comments'] = [];
        $result               = ArticleComment::where('article_id', $article->id)->first();
        if ($result) {
            $comments['comments']                = $result->toArray();
            $comments['comments']['laywer_info'] = new LaywerResource(Laywer::findOrFail($comments['comments']['laywer_id']));
        }

        return $this->success(array_merge($info, $comments));
        //return $this->success(new ArticleResource($article));
    }

}
