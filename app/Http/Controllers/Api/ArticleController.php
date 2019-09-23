<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\ArticleRequest;
use App\Http\Resources\Api\ArticleResource;
use App\Models\Article;
use Illuminate\Support\Facades\Auth;

class ArticleController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/articles",
     *   tags={"MainPage"},
     *   summary="热门资讯",
     *   description="热门资讯列表",
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index()
    {
        $articles = Article::paginate(5);
        return ArticleResource::collection($articles);
    }

    /**
     * @SWG\Get(
     *   path="/articles/{id}",
     *   tags={"MainPage"},
     *   summary="热门资讯详情",
     *   description="热门资讯详情",
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path",description="资讯id"),
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function show(Article $article)
    {
        return $this->success(new ArticleResource($article));
    }

    /**
     * @SWG\Post(
     *     path="/articles",
     *     tags={"MainPage"},
     *     summary="{咨询专家保存}",
     *     description="咨询专家保存",
     *     produces={"application/json"},
     *     security={
     *      {
     *          "Bearer":{}
     *      }
     *     },
     *     @SWG\Parameter(name="spec_id",in="formData",description="请求参数-专家id",required=true,type="integer"),
     *     @SWG\Parameter(name="content",in="formData",description="请求参数-问题",required=true,type="string",minLength=10),
     *     @SWG\Response(response=201,description="操作成功"),
     *     @SWG\Response(response=400,description="参数错误"),
     *     @SWG\Response(response=401,description="未授权"),
     *     @SWG\Response(response="405", description="访问方式不正确")
     * )
     */
    public function store(ArticleRequest $request)
    {
        Article::create(array_merge($request->all(),['user_id' => Auth::guard('api')->id()]));
        return $this->setStatusCode(201)->success('提交成功');
    }

}
