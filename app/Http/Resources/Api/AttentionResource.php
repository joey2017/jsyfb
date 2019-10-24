<?php

namespace App\Http\Resources\Api;

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
            'id'          => $this->id,
            'user_id'     => $this->user_id,
            'laywer_id'   => $this->laywer_id,
            'laywer_name' => $this->laywer()->first()->name ?? '',
            'avatar'      => env('APP_UPLOAD_PATH').'/'.$this->laywer()->first()->avatar ?? '',
            'created_at'  => (string)$this->created_at,
        ];
    }
}
