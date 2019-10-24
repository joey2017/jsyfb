<?php

namespace App\Http\Resources\Api;

use App\Models\Region\Area;
use App\Models\Region\City;
use App\Models\Region\Province;
use App\Models\UserAddress;
use Illuminate\Http\Resources\Json\JsonResource;

class UserAddressResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request $request
     * @return array
     */
    public function toArray($request)
    {
        $province      = Province::where('code', '=', $this->province)->first();
        $province_name = $province ? $province->province_name : '';
        $city          = City::where('code', '=', $this->city)->first();
        $city_name     = $city ? $city->city_name : '';
        $area          = Area::where('code', '=', $this->district)->first();
        $area_name     = $area ? $area->city_name : '';

        return [
            'id'              => $this->id,
            'user_id'         => $this->user_id,
            'receiver'        => $this->receiver,
            'receiver_mobile' => $this->receiver_mobile,
            'province'        => $this->province,
            'province_name'   => $province_name,
            'city'            => $this->city,
            'city_name'       => $city_name,
            'district'        => $this->district,
            'district_name'   => $area_name,
            'address'         => $this->address,
            'pcda'            => $province_name . $city_name . $area_name . $this->address,
            'status'          => UserAddress::getStatusName($this->status),
            'created_at'      => (string)$this->created_at,
            'updated_at'      => (string)$this->updated_at
        ];
    }
}
