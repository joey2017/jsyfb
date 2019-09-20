<?php

namespace App\Http\Controllers\Api;

use App\Models\Article;
use App\Models\ArticleShare;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ArticleShareController extends Controller
{
    public function store(Request $request)
    {
        $article_id = $request->input('article_id', '');

        if (empty($article_id)) {
            return $this->failed('分享失败，参数有误',400);
        }

        $article = Article::findOrFail($article_id);

        try {

            DB::transaction(function() use ($article){
                ArticleShare::create(['user_id' => Auth::guard('api')->id(),'article_id' => $article->id]);
                $article->share_count += 1;
                $article->save();
            });

        } catch (\PDOException $e) {
            Log::channel('mysqllog')->error('mysql错误：',['msg' => $e->getMessage()]);
        } catch (\Throwable $exception) {
            Log::error('throwable错误：',['msg' => $exception->getMessage()]);
        }

        return $this->setStatusCode(201)->success('分享成功');
    }

}
