<?php

namespace App\Http\Resources\Api;

use App\Models\Customer;
use Illuminate\Http\Resources\Json\JsonResource;

class CustomerResource extends JsonResource
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
            'id'            => $this->id,
            'kf_account'    => $this->kf_account,
            'kf_id'         => $this->kf_id,
            'kf_nick'       => $this->kf_nick,
            'kf_wx'         => $this->kf_wx,
            'kf_headimgurl' => $this->kf_headimgurl,
            'status'        => Customer::getStatusName($this->status),
            'created_at'    => (string)$this->created_at,
            'updated_at'    => (string)$this->updated_at,
        ];
    }
}
