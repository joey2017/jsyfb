<?php

namespace App\Http\Resources\Api;

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
        return [
            'id'              => $this->id,
            'user_id'         => $this->user_id,
            'receiver'        => $this->receiver,
            'receiver_mobile' => $this->receiver_mobile,
            'province'        => $this->province,
            'province_name'   => $this->provinceName->province_name,
            'city'            => $this->city,
            'city_name'       => $this->cityName->city_name,
            'district'        => $this->district,
            'district_name'   => $this->areaName->area_name,
            'address'         => $this->address,
            'pcda'            => $this->provinceName->province_name .
                $this->cityName->city_name . $this->areaName->area_name . $this->address,
            'status'          => UserAddress::getStatusName($this->status),
            'created_at'      => (string)$this->created_at,
            'updated_at'      => (string)$this->updated_at
        ];
    }
}
