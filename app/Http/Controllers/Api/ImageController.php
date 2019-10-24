<?php

namespace App\Http\Controllers\Api;

use App\Models\UserImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class ImageController extends Controller
{
    /**
     * @SWG\Post(
     *   path="/upload/image",
     *   tags={"Misc"},
     *   summary="文件上传接口",
     *   description="图片上传",
     *   @SWG\Response(response=201,description="成功"),
     *   @SWG\Response(response=400,description="账号或密码错误"),
     * )
     */
    public function upload(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'file' => 'required|image'
        ]);

        if ($validator->fails()) {
            /*
            Response::json([
                'status'  => false,
                'message' => $validator->errors()
            ]);
            */
            return $this->failed('文件类型不符');
        } else {
            try {
                $file     = $request->file('file');//获取文件
                $fileName = md5(time() . rand(0, 10000)) . '.' . $file->getClientOriginalName();//随机名称+获取客户的原始名称
                $savePath = 'images/' . date('Y-m-d') . '/' . $fileName;//存储到指定文件，例如image/.filename public/.filename
                //在.env修改默认驱动local为uploads
                //Storage::put($savePath, File::get($file));//通过Storage put方法存储   File::get获取到的是文件内容
                Storage::exists($savePath);

                if (Storage::disk('uploads')->put($savePath, File::get($file))) {
                    $user = Auth::guard('api')->user();
                    UserImage::create([
                        'user_id' => $user->id,
                        'path'    => $savePath
                    ]);
                    return $this->created('上传成功');
                }
            } catch (\Exception $exception) {
                Log::error('图片上传出错：' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
            }

        }
        return $this->failed('上传失败');
    }
}
