<?php

namespace App\Http\Requests\Api;

class FeedbackRequest extends FormRequest
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'content' => ['required', 'string', 'min:10'],
            'mobile'  => ['required', 'regex:/^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$/'],
            'name'    => ['required', 'string'],
        ];
    }

    public function messages()
    {
        return [
            'content.required' => '留言内容不能为空',
            'content.min'      => '留言内容最小长度为10个字符',
            'mobile.required'  => '手机号不能为空',
            'mobile.regex'     => '手机号码格式不正确',
            'name.required'    => '姓名不能为空',
        ];
    }
}
