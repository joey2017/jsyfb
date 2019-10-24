<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\BalanceLogRequest;
use App\Http\Resources\Api\BalanceLogResource;
use App\Models\BalanceLog;
use App\Services\NoticeService;
use App\Services\PaymentService;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class BalanceLogController extends Controller
{
    protected $payment;

    protected $notice;

    public function __construct(PaymentService $paymentService, NoticeService $noticeService)
    {
        $this->payment = $paymentService;
        $this->notice  = $noticeService;
    }

}
