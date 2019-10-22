<?php

namespace App\Http\Resources\Api;

use App\Models\NotaryOffice;
use Illuminate\Http\Resources\Json\JsonResource;

class NotaryOfficeResource extends JsonResource
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
            'id'             => $this->id,
            'name'           => $this->name,
            'mobile'         => $this->mobile,
            'picture'        => $this->picture,
            'telephone'      => $this->telephone,
            'comments_count' => $this->comments_count,
            'score'          => $this->score,
            'address'        => $this->address,
            'lng'            => $this->lng,
            'lat'            => $this->lat,
            'status'         => NotaryOffice::getStatusName($this->status),
            'created_at'     => (string)$this->created_at,
            'updated_at'     => (string)$this->updated_at
        ];
    }
}
