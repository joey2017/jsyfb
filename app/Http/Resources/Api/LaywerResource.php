<?php

namespace App\Http\Resources\Api;

use App\Models\Laywer;
use Illuminate\Http\Resources\Json\JsonResource;

class LaywerResource extends JsonResource
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
            'name'          => $this->name,
            'title'         => $this->title,
            'mobile'        => $this->mobile,
            'telephone'     => $this->telephone,
            'avatar'        => $this->avatar,
            'tag'           => $this->tag,
            'company'       => $this->company,
            'province_code' => $this->province_code,
            'city_code'     => $this->city_code,
            'district_code' => $this->district_code,
            'address'       => $this->address,
            'cate_id'       => $this->cate_id,
            'expertise'     => $this->expertise,
            'summary'       => $this->summary,
            'status'        => Laywer::getStatusName($this->status),
            'created_at'    => (string)$this->created_at,
            'updated_at'    => (string)$this->updated_at
        ];
    }
}
