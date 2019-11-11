<?php

namespace App\Http\Resources\Api;

use App\Models\LegalBookSection;
use Illuminate\Http\Resources\Json\JsonResource;

class LegalBookSectionResource extends JsonResource
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
            'name'       => $this->name,
            'cate_id'    => $this->cate_id,
            'category'   => $this->category->title ?? '',
            'jump_url'   => '/legals/books/{id}',
            'title'      => $this->title,
            'status'     => LegalBookSection::getStatusName($this->status),
            'created_at' => (string)$this->created_at,
            'updated_at' => (string)$this->updated_at
        ];
    }
}
