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
    public function update($quantity, $descr, $type)
    {
        try {
            DB::transaction(function () use ($quantity, $descr, $type) {
                $user = Auth::guard('api')->user();
                $type == 1 ? $user->ingots += $quantity : $user->ingots -= $quantity;
                $user->save();

                $ingot = Ingots::firstOrCreate(['user_id' => $user->id]);
                $type == 1 ? $ingot->quantity += $quantity : $ingot->quantity -= $quantity;
                $ingot->save();

                IngotsLog::create([
                    'user_id' => $user->id,
                    'cost'    => $quantity,
                    'descr'   => $descr,
                    'type'    => $type,
                ]);
            });
        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
        }

    }


}