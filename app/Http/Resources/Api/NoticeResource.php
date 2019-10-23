<?php

namespace App\Http\Resources\Api;

use App\Models\Notice;
use Illuminate\Http\Resources\Json\JsonResource;

class NoticeResource extends JsonResource
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
            'type'        => Notice::TYPES[$this->type],
            'title'       => $this->title,
            'content'     => $this->content,
            'status'      => $this->status,
            'status_text' => Notice::getStatusName($this->status),
            'created_at'  => (string)$this->created_at,
            'updated_at'  => (string)$this->updated_at
        ];
    }
}
