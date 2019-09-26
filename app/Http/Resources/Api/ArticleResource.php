<?php

namespace App\Http\Resources\Api;

use App\Models\Article;
use Illuminate\Http\Resources\Json\JsonResource;

class ArticleResource extends JsonResource
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
            'user_id'        => $this->user_id,
            'spec_id'        => $this->spec_id,
            'content'        => $this->content,
            'interpretation' => $this->interpretation,
            'measures'       => $this->measures,
            'browse_count'   => $this->browse_count,
            'like_count'     => $this->like_count,
            'share_count'    => $this->share_count,
            'status'         => Article::getStatusName($this->status),
            'created_at'     => (string)$this->created_at,
            'updated_at'     => (string)$this->updated_at
        ];
    }
}
