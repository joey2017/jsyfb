<?php

namespace App\Http\Controllers\Api;

use App\Models\Article;
use App\Models\ArticleLike;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ArticleLikeController extends Controller
{
    /**
     * @SWG\Post(
     *     path="/articles/likes",
     *     tags={"MainPage"},
     *     summary="文章点赞",
     *     description="热门资讯点赞",
     *     operationId="articles-likes.store",
     *     produces={"application/json"},
     *     security={
     *      {
     *          "Bearer":{}
     *      }
     *     },
     *     @SWG\Parameter(name="article_id",in="query",description="请求参数-资讯id",required=true,type="integer"),
     *     @SWG\Parameter(name="cancel",in="query",description="请求参数为1时取消点赞，默认为0",required=false,type="integer"),
     *     @SWG\Response(response=201,description="操作成功"),
     *     @SWG\Response(response=400,description="参数错误"),
     *     @SWG\Response(response=401,description="未授权"),
     *     @SWG\Response(response=406,description="重复点赞"),
     * )
     */
    public function store(Request $request)
    {
        $article_id = $request->input('article_id', '');

        if (empty($article_id)) {
            return $this->failed('点赞失败，参数有误',400);
        }

        $article = Article::findOrFail($article_id);

        //cancel=1取消点赞
        $cancel = $request->input('cancel',0);

        if (!$cancel && ArticleLike::where([['user_id', Auth::guard('api')->id()], ['article_id', $article_id]])->exists()) {
            return $this->failed('请勿重复点赞', '406');
        };

        try {
            if ($cancel == 1) {
                DB::transaction(function() use ($article){
                    ArticleLike::where([['user_id', Auth::guard('api')->id()], ['article_id', $article->id]])->delete();
                    $article->like_count -= 1;
                    $article->save();
                });

                return $this->setStatusCode(201)->success('','success','取消点赞成功');
            }
            DB::transaction(function() use ($article){
                ArticleLike::create(['user_id' => Auth::guard('api')->id(),'article_id' => $article->id]);
                $article->like_count += 1;
                $article->save();
            });

        } catch (\PDOException $e) {
            Log::channel('mysqllog')->error('mysql错误：',['msg' => $e->getMessage()]);
        } catch (\Throwable $exception) {
            Log::error('throwable错误：',['msg' => $exception->getMessage()]);
        }

        //return $this->setStatusCode(201)->success('','点赞成功');
        return $this->created('点赞成功');
    }

}
