<?php

namespace App\Http\Resources\Api;

use App\Models\AnswerList;
use Illuminate\Http\Resources\Json\JsonResource;

class AnswerListResource extends JsonResource
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
            'title'      => $this->title,
            'A'          => $this->A,
            'B'          => $this->B,
            'C'          => $this->C,
            'D'          => $this->D,
            'correct'    => $this->correct,
            'status'     => AnswerList::getStatusName($this->status),
            'created_at' => (string)$this->created_at,
            'updated_at' => (string)$this->updated_at
        ];
    }
}