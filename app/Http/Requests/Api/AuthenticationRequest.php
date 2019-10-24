<?php

namespace App\Http\Requests\Api;

use Illuminate\Foundation\Http\FormRequest;

class AuthenticationRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'realname'      => 'required|string',
            'mobile'        => 'required|regex:/^1[345789][0-9]{9}$/',
            //'email'         => 'sometimes|required|email',
            'identity_card' => 'required|string',
            'hand_photo'    => 'required|string',
        ];
    }

    public function messages()
    {
        return [
            'realname.required'      => '真实姓名必须填写',
            'mobile.required'        => '手机号码必须填写',
            'mobile.regex'           => '手机号码格式不正确',
            'identity_card.required' => '身份证号码必须填写',
            'hand_photo.required'    => '手持身份证照必须填写',
        ];
    }
}
