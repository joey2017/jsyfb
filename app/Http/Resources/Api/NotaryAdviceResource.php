<?php

namespace App\Http\Resources\Api;

use App\Constant;
use function App\Helpers\getAllBusinessCategoryIdAndTitle;
use App\Models\NotaryAdvice;
use App\Models\Region\City;
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
        $payment = $this->payment()->first();
        return [
            'id'            => $this->id,
            'user_id'       => $this->user_id,
            'notary_id'     => $this->notary_id,
            'notary_name'   => $this->notary()->first()->name ?? '',
            'city_name'     => City::where('code', $this->notary()->first()->city_code)->first()->city_name,
            'payment_id'    => $this->payment_id,
            'pay_fee'       => $payment->cost ?? '',
            'pay_type'      => $payment->type ?? '',
            'pay_type_text' => ReservationPayment::TYPES[$payment->type ?? 1],
            'username'      => $this->username,
            'sex'           => Constant::SEXS[$this->sex],
            'mobile'        => $this->mobile,
            'type'          => (getAllBusinessCategoryIdAndTitle())[$this->type],
            'question'      => $this->question,
            'status'        => NotaryAdvice::getStatusName($this->status),
            'created_at'    => (string)$this->created_at,
            'updated_at'    => (string)$this->updated_at
        ];
    }
}
