<?php

namespace App\Http\Resources\Api;

use App\Models\BrowseHistory;
use Illuminate\Http\Resources\Json\JsonResource;

class BrowseHistoryResource extends JsonResource
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
            'id'              => $this->id,
            'user_id'         => $this->user_id,
            'article_id'      => $this->article_id,
            'article_content' => $this->hotArticle()->first()->content ?? '',
            'like_count'      => $this->hotArticle()->first()->like_count ?? '',
            'share_count'     => $this->hotArticle()->first()->share_count ?? '',
            'status'          => BrowseHistory::getStatusName($this->status),
            'created_at'      => (string)$this->created_at,
            'updated_at'      => (string)$this->updated_at
        ];
    }
}
