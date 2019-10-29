<?php

namespace App\Http\Resources\Api;

use App\Models\BalanceLog;
use Illuminate\Http\Resources\Json\JsonResource;

class BalanceLogResource extends JsonResource
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
            'type'       => $this->type,
            'type_name'  => BalanceLog::getTypeName($this->type ?? 1),
            'cost'       => $this->cost,
            'descr'      => $this->descr,
            'remark'     => $this->remark,
            'status'     => BalanceLog::getStatusName($this->status),
            'created_at' => (string)$this->created_at,
            'updated_at' => (string)$this->updated_at
        ];
    }
}
