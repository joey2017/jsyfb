<?php

namespace App\Jobs\Api;

use App\Models\Unifiedorder;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class CloseOrderJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * @var Unifiedorder
     */
    protected $unifiedorder;


    /**
     * CloseOrderJob constructor.
     * @param Unifiedorder $unifiedorder
     * @param $delay
     */
    public function __construct(Unifiedorder $unifiedorder, $delay)
    {
        $this->unifiedorder = $unifiedorder;
        $this->delay($delay);
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        if ($this->unifiedorder->pay_status == Unifiedorder::SUCCESS) {
            return;
        }

        $this->unifiedorder->update(['pay_status' => Unifiedorder::CANCELED]);
    }
}
