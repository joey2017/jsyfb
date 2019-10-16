<?php

namespace App\Http\Resources\Api;

use App\constant;
use App\Models\NotaryAdvice;
use Illuminate\Http\Resources\Json\JsonResource;

class NotaryAdviceResource extends JsonResource
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
            'username'   => $this->username,
            'sex'        => constant::SEXS[$this->sex],
            'mobile'     => $this->mobile,
            'type'       => constant::CASE_TYPES[$this->type],
            'question'   => $this->question,
            'status'     => NotaryAdvice::getStatusName($this->status),
            'created_at' => (string)$this->created_at,
            'updated_at' => (string)$this->updated_at
        ];
    }
}
