<?php

namespace App\Http\Resources\Api;

use App\Models\IngotsLog;
use Illuminate\Http\Resources\Json\JsonResource;

class IngotLogResource extends JsonResource
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
            'user_id'    => $this->user_id,
            'cost'       => $this->cost,
            'descr'      => $this->descr,
            'type'       => $this->type,
            'type_text'  => IngotsLog::getTypeName($this->type),
            'remark'     => $this->remark,
            'created_at' => (string)$this->created_at,
            'updated_at' => (string)$this->updated_at
        ];;
    }
}
