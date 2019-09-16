<?php

namespace App\Http\Controllers;

use App\Services\MessageService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MessageController extends Controller
{
    //
    protected $message;

    public function __construct(MessageService $messageService)
    {
        $this->message = $messageService;
    }

    public function create()
    {
        return view('message.create');
    }

    public function store(Request $request)
    {
        /*
        $validatedData = $this->validate($request, [
            'username' => 'bail|required',
            'mobile'   => 'bail|required|phone',
            'content'  => 'required',
        ]);
        */

        $validator = Validator::make($request->all(), [
            'username' => 'bail|required',
            'mobile'   => 'bail|required|phone',
            'content'  => 'required',
        ]);

        if ($validator->fails()) {
            return redirect('message/create')
                ->withErrors($validator)
                ->withInput();
        }

        /*
         * 自动重定向
        $validator = Validator::make($request->all(),[
            'username' => 'bail|required',
            'mobile'   => 'bail|required|mobile',
            'content'  => 'required',
        ])->validate();

        //验证后钩子
        $validator->after(function ($validator) {
            if ($this->somethingElseIsInvalid()) {
                $validator->errors()->add('field', 'Something is wrong with this field!');
            }
        });


        //处理错误消息
        $errors = $validator->errors();

        foreach ($errors->get('email') as $message) {
            //
        }

        foreach ($errors->all() as $message) {
            //
        }

        //自定义错误消息
        $messages = [
            'required' => 'The :attribute field is required.',
        ];

        $validator = Validator::make($input, $rules, $messages);
        */
    }
}
