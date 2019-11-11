<?php

namespace App\Http\Resources\Api;

use App\Constant;
use App\Models\NotaryAdvice;
use App\Models\ReservationPayment;
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
            'id'            => $this->id,
            'user_id'       => $this->user_id,
            'notary_id'     => $this->notary_id,
            'notary_name'   => $this->notary->name ?? '',
            'city_name'     => $this->notary->city->city_name ?? '',
            'payment_id'    => $this->payment_id,
            'pay_fee'       => $this->payment->cost ?? '',
            'pay_type'      => $this->payment->type ?? '',
            'pay_type_text' => ReservationPayment::TYPES[$this->payment->type ?? 1],
            'username'      => $this->username,
            'sex'           => Constant::SEXS[$this->sex],
            'mobile'        => $this->mobile,
            'type'          => $this->category->title,
            'question'      => $this->question,
            'status'        => NotaryAdvice::getStatusName($this->status),
            'created_at'    => (string)$this->created_at,
            'updated_at'    => (string)$this->updated_at
        ];
    }
}
