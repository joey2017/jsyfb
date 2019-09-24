<?php

namespace App\Http\Requests\Api;

class MessageRequest extends FormRequest
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //'user_id'  => ['required', 'integer'],
            'username' => ['max:12'],
            'mobile'   => ['sometimes', 'required', 'regex:/^1[345789][0-9]{9}$/'],
            'content'  => ['required', 'min:10'],
        ];
    }

    public function messages()
    {

        return [
            //'user_id.required' => '用户ID必须填写',
            //'user_id.integer'  => '用户ID为整数',
            'mobile.required'  => '手机号码格式不正确',
            'content.required' => '留言内容不能为空',
            'content.min'      => '留言内容最小长度为10个字符',
        ];
    }
}
