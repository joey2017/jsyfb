<?php

namespace App\Http\Resources\Api;

use App\Models\Article;
use App\Models\ArticleLike;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Auth;

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
            'id'           => $this->id,
            'admin_id'     => $this->admin_id,
            'admin_name'   => $this->adminer()->first()->name ?? '',
            'title'        => $this->title,
            'content'      => $this->content,
            'images'       => env('APP_UPLOAD_PATH') . '/' . $this->images,
            'browse_count' => $this->browse_count,
            'like_count'   => $this->like_count,
            'share_count'  => $this->share_count,
            'is_like'      => ArticleLike::where([['user_id', Auth::guard('api')->id()], ['article_id', $this->id]])->first() ? true : false,
            'status'       => Article::getStatusName($this->status),
            'created_at'   => (string)$this->created_at,
            'updated_at'   => (string)$this->updated_at
        ];
    }
}
