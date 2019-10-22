<?php

namespace App\Http\Resources\Api;

use App\Models\Banner;
use Illuminate\Http\Resources\Json\JsonResource;

class BannerResource extends JsonResource
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
            'picname'    => $this->picname,
            'image_path' => env('APP_UPLOAD_PATH').'/'.$this->image_path,
            'sort'       => $this->sort,
            'status'     => Banner::getStatusName($this->status),
            'created_at' => (string)$this->created_at,
            'updated_at' => (string)$this->updated_at
        ];
    }
}
