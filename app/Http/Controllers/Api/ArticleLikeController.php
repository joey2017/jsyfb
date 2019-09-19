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
    public function create(Request $request)
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

                return $this->setStatusCode(201)->success('取消点赞成功');
            }
            DB::transaction(function() use ($article){
                ArticleLike::create(['user_id' => Auth::guard('api')->id(),'article_id' => $article->id]);
                $article->like_count += 1;
                $article->save();
            });

        } catch (\PDOException $e) {
            Log::channel('mysqllog')->error('mysql错误：',['msg' => $e->getMessage(),'info' => $e->getTraceAsString()]);
        }

        return $this->setStatusCode(201)->success('点赞成功');
    }

}
