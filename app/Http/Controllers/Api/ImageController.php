<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class ImageController extends Controller
{
    public function upload(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'file' => 'required|image'
        ]);

        if ($validator->fails()) {
            Response::json([
                'status' => false,
                'message' => $validator->errors()
            ]);
        } else {
            try {
                $file     = $request->file('file');//获取文件
                $fileName = md5(time() . rand(0, 10000)) . '.' . $file->getClientOriginalName();//随机名称+获取客户的原始名称
                $savePath = 'images/' . $fileName;//存储到指定文件，例如image/.filename public/.filename
                Storage::put($savePath, File::get($file));//通过Storage put方法存储   File::get获取到的是文件内容
            } catch (\Exception $exception) {
                Log::error('图片上传出错：'.$exception->getMessage(),['info' => $exception->getTraceAsString()]);
            }
            if (Storage::exists($savePath)) {
                $user = Auth::guard('api')->user();
                /*Image::create([
                    'user_id' => $user->id,
                    'path'    => $savePath
                ]);*/
            }
        }
    }
}
