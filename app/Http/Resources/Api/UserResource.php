<?php

namespace App\Http\Resources\Api;

use App\Constant;
use App\Models\Authentication;
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
            'id'                   => $this->id,
            'username'             => $this->username,
            'nickname'             => $this->nickname,
            'avatar'               => $this->avatar,
            'email'                => $this->email,
            'openid'               => $this->openid,
            'gender'               => Constant::SEXS[$this->gender ?? 0],
            'mobile'               => $this->mobile,
            'inviter_id'           => $this->inviter_id,
            'descr'                => $this->descr,
            'login_num'            => $this->login_num,
            'last_login_time'      => (string)$this->last_login_time,
            'is_verified'          => $this->is_verified,
            'verified_status'      => $this->authen->status,
            'verified_status_text' => $this->authen->status === '' ? '暂未提交认证' : Authentication::getStatusName($this->authen->status),
            'ingots'               => $this->ingots,
            'invitation_code'      => $this->invitation_code,
            'notices_count'        => $this->notices_count ?? '',
            'score'                => $this->score,
            'status'               => User::getStatusName($this->status ?? 1),
            'created_at'           => (string)$this->created_at,
            'updated_at'           => (string)$this->updated_at
        ];
    }
}
