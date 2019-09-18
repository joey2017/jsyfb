<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Resources\Json\JsonResource;

class UserSignResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id'                    => $this->id,
            'user_id'               => $this->user_id,
            'successive_sign_count' => $this->successive_sign_count,
            'count'                 => $this->count,
            'last_sign_time'        => (string)$this->last_sign_time,
            'start_time'            => (string)$this->start_time,
            'week_count'            => $this->week_count,
            'created_at'            => (string)$this->created_at,
            'updated_at'            => (string)$this->updated_at
        ];
    }
}
