<?php

namespace App\Http\Resources\Api;

use App\Constant;
use function App\Helpers\getAllBusinessCategoryIdAndTitle;
use App\Models\Region\City;
use App\Models\ReservationPayment;
use App\Models\SpecialistAdvice;
use Illuminate\Http\Resources\Json\JsonResource;

class SpecialistAdviceResource extends JsonResource
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
            'laywer_id'     => $this->laywer_id,
            'laywer_name'   => $this->laywer->name ?? '',
            'city_name'     => City::where('code', $this->laywer->city_code)->first()->city_name,
            'payment_id'    => $this->payment_id,
            'pay_fee'       => $this->payment->cost ?? '',
            'pay_type'      => $this->payment->type ?? '',
            'pay_type_text' => ReservationPayment::TYPES[$this->payment->type ?? 1],
            'username'      => $this->username,
            'sex'           => Constant::SEXS[$this->sex],
            'mobile'        => $this->mobile,
            'type'          => (getAllBusinessCategoryIdAndTitle())[$this->type],
            'question'      => $this->question,
            'status'        => SpecialistAdvice::getStatusName($this->status),
            'created_at'    => (string)$this->created_at,
            'updated_at'    => (string)$this->updated_at
        ];
    }
}
