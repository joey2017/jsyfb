<?php

namespace App\Http\Requests\Api;

class ArticleRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'spec_id' => 'required|integer',
            'content' => 'required|string|min:10',
        ];
    }

    public function messages()
    {
        return [
            'spec_id.required' => '专家ID必须填写',
            'spec_id.integer'  => '专家ID为整数',
            'content.required' => '留言内容不能为空',
            'content.min'      => '留言内容最小长度为10个字符',
        ];
    }
}
