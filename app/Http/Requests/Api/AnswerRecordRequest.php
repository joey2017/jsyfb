<?php

namespace App\Http\Requests\Api;

class AnswerRecordRequest extends FormRequest
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'answer_list_id' => 'required|integer',
            'date'           => 'date',
            'question'       => 'required|string',
            'answer'         => 'required|string',
        ];
    }

    public function messages()
    {
        return [
            'answer_list_id.required' => '问题ID不能为空',
            'answer_list_id.integer'  => '问题ID必须是整数',
            'date.date'               => '日期格式不正确',
            'question.required'       => '答题内容不能为空',
            'answer.required'         => '用户答案不能为空',
        ];
    }
}
