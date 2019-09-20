<?php

namespace App\Http\Resources\Api;

use App\Models\Attention;
use Illuminate\Http\Resources\Json\JsonResource;

class AttentionResource extends JsonResource
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
            'id'         => $this->id,
            'user_id'    => $this->user_id,
            'spec_id'    => $this->spec_id,
            'spec_name'  => $this->specialist()->first()->name ?? '',
            'status'     => Attention::getStatusName($this->status),
            'created_at' => (string)$this->created_at,
            'updated_at' => (string)$this->updated_at
        ];
    }
}
