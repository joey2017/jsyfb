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
            'email'         => 'sometimes|required|email',
            'province'      => 'required|string',
            'city'          => 'required|string',
            'district'      => 'required|string',
            'address'       => 'required|string',
            'identity_card' => 'required|string',
            'front_photo'   => 'required|string',
            'back_photo'    => 'required|string',
            'hand_photo'    => 'required|string',
        ];
    }

    public function messages()
    {
        return [
            'realname.required'      => '真实姓名必须填写',
            'mobile.required'        => '手机号码必须填写',
            'mobile.regex'           => '手机号码格式不正确',
            'email.required'         => '邮箱地址不正确',
            'province.required'      => '省份必须填写',
            'city.required'          => '城市必须填写',
            'district.required'      => '区县必须填写',
            'address.required'       => '详细地址必须填写',
            'identity_card.required' => '身份证号码必须填写',
            'front_photo.required'   => '身份证正面照必须填写',
            'back_photo.required'    => '身份证反面照必须填写',
            'hand_photo.required'    => '手持身份证照必须填写',
        ];
    }
}
