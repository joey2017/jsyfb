<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Unifiedorder extends Model
{
    /**
     * @var string
     */
    protected $table = 'jyfb_unifiedorder';

    /**
     * @var array
     */
    protected $fillable = ['user_id', 'out_trade_no', 'description', 'total_fee', 'pay_status'];
}
