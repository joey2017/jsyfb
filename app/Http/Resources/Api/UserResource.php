<?php

namespace App\Http\Resources\Api;

use App\Constant;
use App\Models\User;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
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
            'id'              => $this->id,
            'username'        => $this->username,
            'nickname'        => $this->nickname,
            'avatar'          => $this->avatar,
            'email'           => $this->email,
            'openid'          => $this->openid,
            'gender'          => Constant::SEXS[$this->gender],
            'mobile'          => $this->mobile,
            'inviter_id'      => $this->inviter_id,
            'descr'           => $this->descr,
            'login_num'       => $this->login_num,
            'reg_ip'          => $this->reg_ip,
            'last_login_ip'   => $this->last_login_ip,
            'last_login_time' => (string)$this->last_login_time,
            'is_verified'     => $this->is_verified,
            'ingots'          => $this->ingots,
            'invitation_code' => $this->invitation_code,
            'is_vip'          => $this->is_vip,
            'score'           => $this->score,
            'status'          => User::getStatusName($this->status),
            'created_at'      => (string)$this->created_at,
            'updated_at'      => (string)$this->updated_at
        ];
    }
}
