<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Resources\Json\JsonResource;

class GoodsResource extends JsonResource
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
            'goods_name'     => $this->goods_name,
            'image'          => $this->image,
            'detail'         => $this->detail,
            'exchange_rule'  => $this->exchange_rule,
            'description'    => $this->description,
            'exchange_price' => $this->exchange_price,
            'created_at'     => (string)$this->created_at,
            'updated_at'     => (string)$this->updated_at
        ];
    }
}
