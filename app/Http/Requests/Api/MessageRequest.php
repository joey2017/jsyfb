<?php

namespace App\Http\Requests\Api;

use function App\Helpers\getMobileCheckRegex;

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
            'username' => ['max:10', 'min:2'],
            'mobile'   => ['sometimes', 'required', 'regex:' . getMobileCheckRegex()],
            'content'  => ['required', 'min:10'],
        ];
    }

    public function messages()
    {
        return [
            'mobile.required'  => '手机号码格式不正确',
            'content.required' => '留言内容不能为空',
            'content.min'      => '留言内容最小长度为10个字符',
        ];
    }
}
