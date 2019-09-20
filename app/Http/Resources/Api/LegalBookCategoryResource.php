<?php

namespace App\Http\Resources\Api;

use App\Models\LegalBookCategory;
use Illuminate\Http\Resources\Json\JsonResource;

class LegalBookCategoryResource extends JsonResource
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
            'title'      => $this->title,
            'parent_id'  => $this->parent_id,
            'path'       => $this->path,
            'order'      => $this->order,
            'logo'       => $this->logo,
            'status'     => LegalBookCategory::getStatusName($this->status),
            'created_at' => (string)$this->created_at,
            'updated_at' => (string)$this->updated_at
        ];
    }
}
