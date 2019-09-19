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
            'option1'    => $this->option1,
            'option2'    => $this->option2,
            'option3'    => $this->option3,
            'option4'    => $this->option4,
            'correct'    => $this->correct,
            'status'     => AnswerList::getStatusName($this->status),
            'created_at' => (string)$this->created_at,
            'updated_at' => (string)$this->updated_at
        ];
    }
}
