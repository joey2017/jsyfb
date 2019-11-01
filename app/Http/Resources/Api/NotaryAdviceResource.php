<?php

namespace App\Http\Resources\Api;

use App\Constant;
use function App\Helpers\getAllBusinessCategoryIdAndTitle;
use App\Models\NotaryAdvice;
use Illuminate\Http\Resources\Json\JsonResource;

class NotaryAdviceResource extends JsonResource
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
            'id'          => $this->id,
            'user_id'     => $this->user_id,
            'notary_id'   => $this->notary_id,
            'notary_name' => $this->notary()->first()->name ?? '',
            'username'    => $this->username,
            'sex'         => Constant::SEXS[$this->sex],
            'mobile'      => $this->mobile,
            'type'        => (getAllBusinessCategoryIdAndTitle())[$this->type],
            'question'    => $this->question,
            'status'      => NotaryAdvice::getStatusName($this->status),
            'created_at'  => (string)$this->created_at,
            'updated_at'  => (string)$this->updated_at
        ];
    }
}
