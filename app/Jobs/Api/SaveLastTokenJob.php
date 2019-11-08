<?php

namespace App\Jobs\Api;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class SaveLastTokenJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $model;
    protected $token;

    public $tries = 3;

    public $timeout = 30;

    /**
     * SaveLastTokenJob constructor.
     * @param $model
     * @param $token
     */
    public function __construct($model, $token)
    {
        $this->model = $model;
        $this->token = $token;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $this->model && $this->model->last_token = $this->token && $this->model->save();
    }
}
