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
            'content'  => ['required', 'min:10'],
        ];
    }

    public function messages()
    {
        return [
            'content.required' => '留言内容不能为空',
            'content.min'      => '留言内容最小长度为10个字符',
        ];
    }
}
