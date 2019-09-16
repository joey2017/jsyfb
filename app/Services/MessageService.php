<?php

namespace App\Services;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MessageService
{
    public function add(Request $request)
    {
        $data = $request->all();
        if ($this->validator($data)->passes()) {
            //成功
        } else {
            return back()->withErrors('验证信息有误');
        }
    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'username' => 'required|string',
            'mobile'   => 'required|string|mobile',
            'content'  => 'required|string',
        ]);
    }
}