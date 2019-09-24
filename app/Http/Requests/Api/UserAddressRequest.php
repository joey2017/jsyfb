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
            'receiver'        => ['required'],
            'receiver_mobile' => ['required', 'regex:/^1[345789][0-9]{9}$/'],
            'province'        => ['required'],
            'city'            => ['required'],
            'district'        => ['required'],
            'address'         => ['required'],
        ];
    }

    public function messages()
    {

        return [
            'receiver.required'        => '收货人姓名不能为空',
            'receiver_mobile.required' => '收货人手机号码不能为空',
            'province.required'        => '省份不能为空',
            'city.required'            => '城市不能为空',
            'district.required'        => '区县不能为空',
            'address.required'         => '街道地址不能为空',
        ];
    }
}
