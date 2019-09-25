<?php

namespace App\Services;

use App\Models\Ingots;
use App\Models\IngotsLog;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class IngotsService
{
    public function increment($quantity, $descr, $type)
    {
        try {
            DB::transaction(function () use ($quantity, $descr) {
                $user         = Auth::guard('api')->user();
                $user->ingots += $quantity;
                $user->save();

                $ingot           = Ingots::firstOrCreate(['user_id' => $user->id]);
                $ingot->quantity += $quantity;
                $ingot->save();

                IngotsLog::create([
                    'user_id' => $user->id,
                    'cost'    => $quantity,
                    'descr'   => $descr,
                    'type'    => '1',
                ]);
            });
        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
        }

    }

    public function decrement($quantity, $descr)
    {
        try {
            DB::transaction(function () use ($quantity, $descr) {
                $user         = Auth::guard('api')->user();
                $user->ingots -= $quantity;

                $ingot           = Ingots::firstOrCreate(['user_id' => Auth::guard('api')->id()]);
                $ingot->quantity -= $quantity;
                $ingot->save();

                IngotsLog::create([
                    'user_id' => $user->id,
                    'cost'    => $quantity,
                    'descr'   => $descr,
                    'type'    => '2',
                ]);
            });
        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
        }

    }
}