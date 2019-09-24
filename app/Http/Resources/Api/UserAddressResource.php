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
            'city'            => $this->city,
            'district'        => $this->district,
            'address'         => $this->address,
            'status'          => UserAddress::getStatusName($this->status),
            'created_at'      => (string)$this->created_at,
            'updated_at'      => (string)$this->updated_at
        ];
    }
}
