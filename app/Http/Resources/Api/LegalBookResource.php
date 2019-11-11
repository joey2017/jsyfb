<?php

namespace App\Http\Resources\Api;

use App\Models\LegalBook;
use Illuminate\Http\Resources\Json\JsonResource;

class LegalBookResource extends JsonResource
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
            'section_id'    => $this->section_id,
            'section_title' => $this->legalBookSection->title ?? '',
            'detail'        => $this->detail,
            'status'        => LegalBook::getStatusName($this->status),
            'created_at'    => (string)$this->created_at,
            'updated_at'    => (string)$this->updated_at
        ];
    }
}
