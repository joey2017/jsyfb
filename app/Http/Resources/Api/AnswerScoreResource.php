<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Resources\Json\JsonResource;

class AnswerScoreResource extends JsonResource
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
            'id'       => $this->id,
            'user_id'  => $this->user_id,
            'nickname' => $this->user->nickname ?? '',
            'avatar'   => $this->user->avatar ?? '',
            'score'    => $this->score,
            'date'     => $this->date,
        ];
    }
}
