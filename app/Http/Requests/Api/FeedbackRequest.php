<?php

namespace App\Http\Requests\Api;

use function App\Helpers\getMobileCheckRegex;

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
            'mobile'  => ['required', 'regex:' . getMobileCheckRegex()],
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
