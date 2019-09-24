<?php

namespace App\Http\Resources\Api;

use App\Models\Exchange;
use Illuminate\Http\Resources\Json\JsonResource;

class ExchangeResource extends JsonResource
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
            'goods_id'   => $this->goods_id,
            'goods_name' => $this->goods()->first()->goods_name ?? '',
            'ingots'     => $this->ingots,
            'status'     => Exchange::getStatusName($this->status),
            'created_at' => (string)$this->created_at,
        ];
    }
}
