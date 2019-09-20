<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Resources\Json\JsonResource;

class AnswerRecordResource extends JsonResource
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
            'answer_list_id' => $this->answer_list_id,
            'date'           => $this->date,
            'question'       => $this->question,
            'answer'         => $this->answer,
            'created_at'     => (string)$this->created_at,
            'updated_at'     => (string)$this->updated_at
        ];
    }
}
