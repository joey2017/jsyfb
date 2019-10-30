<?php

namespace App\Http\Resources\Api;

use App\Models\Authentication;
use Illuminate\Http\Resources\Json\JsonResource;

class AuthenticationResource extends JsonResource
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
            'realname'      => $this->realname,
            'mobile'        => $this->mobile,
            'email'         => $this->email,
            'province'      => $this->province,
            'city'          => $this->city,
            'district'      => $this->district,
            'address'       => $this->address,
            'identity_card' => $this->identity_card,
            'sex'           => $this->sex,
            'qq'            => $this->qq,
            'birthday'      => $this->birthday,
            //'front_photo'   => env('APP_UPLOAD_PATH').'/'.$this->front_photo,
            //'back_photo'    => env('APP_UPLOAD_PATH').'/'.$this->back_photo,
            'hand_photo'    => $this->hand_photo,
            'remark'        => $this->remark,
            'status'        => $this->status,
            'status_text'   => Authentication::getStatusName($this->status),
            'review_at'     => $this->review_at,
            'veritied_at'   => $this->veritied_at,
            'created_at'    => (string)$this->created_at,
            'updated_at'    => (string)$this->updated_at
        ];
    }
}
