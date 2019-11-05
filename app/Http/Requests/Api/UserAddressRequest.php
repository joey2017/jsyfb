<?php

namespace App\Http\Requests\Api;

class UserAddressRequest extends FormRequest
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'receiver'        => ['required|string'],
            'receiver_mobile' => ['required', 'regex:/^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$/'],
            'province'        => ['required|numeric'],
            'city'            => ['required|numeric'],
            'district'        => ['required|numeric'],
            'address'         => ['required'],
        ];
    }

    public function messages()
    {
        return [
            'receiver.required'        => '收货人姓名不能为空',
            'receiver_mobile.required' => '收货人手机号码不能为空',
            'province.required'        => '省份不能为空',
            'province.numeric'         => '省份代码仅为数字',
            'city.required'            => '城市不能为空',
            'city.numeric'             => '城市代码仅为数字',
            'district.required'        => '区县不能为空',
            'district.numeric'         => '区县代码仅为数字',
            'address.required'         => '街道地址不能为空',
        ];
    }
}
