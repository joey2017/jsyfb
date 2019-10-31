<?php

namespace App\Http\Controllers\Api;

use App\Models\Article;
use App\Models\ArticleShare;
use App\Services\IngotsService;
use App\Services\NoticeService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ArticleShareController extends Controller
{
    /**
     * @var IngotsService
     */
    protected $ingots;

    /**
     * @var NoticeService
     */
    protected $notice;

    /**
     * ArticleShareController constructor.
     * @param IngotsService $ingotsService
     * @param NoticeService $noticeService
     */
    public function __construct(IngotsService $ingotsService, NoticeService $noticeService)
    {
        $this->ingots = $ingotsService;
        $this->notice = $noticeService;
    }

    /**
     * @SWG\Post(
     *     path="/articles/shares",
     *     tags={"MainPage"},
     *     summary="文章转发",
     *     description="热门资讯转发",
     *     produces={"application/json"},
     *     security={
     *      {
     *          "Bearer":{}
     *      }
     *     },
     *     @SWG\Parameter(name="article_id",in="query",description="请求参数-资讯id",required=true,type="integer"),
     *     @SWG\Response(response=201,description="操作成功"),
     *     @SWG\Response(response=400,description="参数错误",),
     *     @SWG\Response(response=401,description="未授权",),
     *     @SWG\Response(response="405", description="访问方式不正确")
     * )
     */
    public function store(Request $request)
    {
        $article_id = $request->input('article_id', '');

        if (empty($article_id)) {
            return $this->failed('分享失败，参数有误', 400);
        }

        $article = Article::findOrFail($article_id);

        $result = false;
        try {
            $result = DB::transaction(function () use ($article) {
                ArticleShare::create(['user_id' => Auth::guard('api')->id(), 'article_id' => $article->id]);
                $article->share_count += 1;
                $article->save();
                //获得法宝
                $result = $this->ingots->limitation('share', '好文分享获得法宝');
                if (false !== $result) {
                    //法宝消息
                    $this->notice->add('好文分享','好文分享获得'.$this->ingots->getValueByKey('share')->value.'个法宝', Auth::guard('api')->id(),2);
                }
                return true;
            });
        } catch (\PDOException $e) {
            Log::channel('mysqllog')->error('mysql错误：', ['msg' => $e->getMessage()]);
        } catch (\Throwable $exception) {
            Log::error('throwable错误：', ['msg' => $exception->getMessage(), ['info' => $exception->getTraceAsString()]]);
        }

        return $result ? $this->created('分享成功') : $this->failed('分享失败');
    }

}
