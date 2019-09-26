<?php

namespace App\Http\Requests\Api;

class BalanceLogRequest extends FormRequest
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'cost' => 'required|numeric',
        ];
    }

    public function messages()
    {
        return [
            'cost.required' => '金额大小必须填写',
        ];
    }
}
