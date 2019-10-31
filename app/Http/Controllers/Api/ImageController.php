<?php

namespace App\Http\Controllers\Api;

use App\Models\UserImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
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
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   @SWG\Response(response=201,description="成功"),
     *   @SWG\Response(response=400,description="文件类型不符或上传失败"),
     * )
     */
    public function upload(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'file' => 'required|image'
        ]);

        if ($validator->fails()) {
            return $this->failed('文件类型不符');
        } else {
            try {
                //获取文件
                $file = $request->file('file');
                //获取客户的原始名称
                $fileName = $file->getClientOriginalName();
                //存储到指定文件，例如image/.filename public/.filename
                $savePath = 'images/' . date('Y-m-d') . '/' . $fileName;
                //Storage::put($savePath, File::get($file));//通过Storage put方法存储   File::get获取到的是文件内容
                //Storage::exists($savePath);

                if (Storage::disk('uploads')->put($savePath, File::get($file))) {
                    $image = UserImage::create([
                        'user_id' => Auth::guard('api')->id(),
                        'path'    => $savePath
                    ]);
                    return $this->setStatusCode(201)->success(['image_url' => env('APP_UPLOAD_PATH') . '/' . $image->path], 'success', '上传成功');
                }
            } catch (\Exception $exception) {
                Log::error('图片上传出错：' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
            }

        }
        return $this->failed('上传失败');
    }
}
