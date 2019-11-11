<?php

namespace App\Http\Requests\Api;

class AdviceCommentRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'advice_id'        => 'required|integer',
            'service_score'    => 'required|integer',
            'profession_score' => 'required|integer',
            'is_solve'         => 'required|integer',
        ];
    }

    public function messages()
    {
        return [
            'advice_id.required'        => '咨询id不能为空',
            'advice_id.integer'         => '咨询id必须是整数',
            'service_score.required'    => '服务评分不能为空',
            'service_score.integer'     => '服务评分必须是整数',
            'profession_score.required' => '专业评分不能为空',
            'profession_score.integer'  => '专业评分必须是整数',
            'is_solve.required'         => '是否解决您的问题不能为空',
            'is_solve.integer'          => '是否解决您的问题必须是整数',
        ];
    }
}
