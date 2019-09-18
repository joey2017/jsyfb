<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\NoticeResource;
use App\Models\Notice;
use Illuminate\Support\Facades\Auth;

class NoticeController extends Controller
{
    public function index()
    {
        //获取认证用户信息
        $userId = Auth::guard('api')->id();
        $notices = Notice::where('user_id',$userId)->paginate(5);
        return NoticeResource::collection($notices);
    }

    public function show(Notice $notice)
    {
        if ($notice->user_id != Auth::guard('api')->id()) {
            return $this->failed('无权访问',403);
        };
        return $this->success(new NoticeResource($notice));
    }

}
