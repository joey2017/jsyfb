<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\NoticeResource;
use App\Models\Notice;
use Illuminate\Support\Facades\Auth;

class NoticeController extends Controller
{
    /**
     * @SWG\Get(
     *     path="/notices",
     *     summary="消息列表",
     *     tags={"MainPage"},
     *     description="包含各种消息",
     *     produces={"application/json"},
     *     security={
     *      {
     *          "Bearer":{}
     *      }
     *     },
     *     @SWG\Response(
     *         response=200,
     *         description="基本信息",
     *         @SWG\Schema(
     *            type="json",
     *            @SWG\Property(property="cate_id",type="integer",description="消息分类id"),
     *            @SWG\Property(property="title",type="string",description="消息标题"),
     *            @SWG\Property(property="content",type="string",description="消息内容"),
     *            @SWG\Property(property="status",type="integer",description="消息状态：0未读1已读")
     *         )
     *     ),
     *     @SWG\Response(response=401,description="未授权"),
     *     @SWG\Response(response=422,description="未登录")
     * )
     */
    public function index()
    {
        //获取认证用户信息
        $userId  = Auth::guard('api')->id();
        $notices = Notice::where('user_id', $userId)->orderBy('id', 'desc')->paginate(10);
        /*
         $output = [
             'results' => [],
             'meta' => [],
         ];

         // Get Results
         $output['results'] = DB::table('users')->where('type','a')->orWhere('type','l')->take($per_page)->skip($per_page * ($page - 1))->get();

         // Set Meta
         $output['meta'] = [
            'page'  => $page,
            'per_page' => $per_page,
            'count'  => DB::select('SELECT FOUND_ROWS()'),
            'total_pages' => DB::table('users')->count()/$per_page
         ];

         */
        return $this->success(NoticeResource::collection($notices));
    }

    /**
     * @SWG\Get(
     *   path="/notices/{id}",
     *   tags={"MainPage"},
     *   summary="消息详情",
     *   description="消息详情",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Parameter(name="id", type="integer", required=true, in="path", description="消息id"),
     *   @SWG\Response(response=200,description="成功"),
     *   @SWG\Response(response=403,description="禁止访问")
     * )
     */
    public function show(Notice $notice)
    {
        if ($notice->user_id != Auth::guard('api')->id()) {
            return $this->failed('禁止访问', 403);
        };
        //修改状态
        $notice->status = Notice::NORMAL;
        $notice->save();
        return $this->success(new NoticeResource($notice));
    }

}
