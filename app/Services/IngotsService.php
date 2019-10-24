<?php

namespace App\Services;

use App\Models\Ingots;
use App\Models\IngotsConfig;
use App\Models\IngotsLog;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redis;

class IngotsService
{

    /**
     * @param $quantity
     * @param $descr
     * @param $type
     * @param $user
     */
    public function update($quantity, $descr, $type, $user)
    {
        try {
            DB::transaction(function () use ($quantity, $descr, $type, $user) {
                //$user = Auth::guard('api')->user();
                $type == IngotsLog::TYPE_INCRE ? $user->ingots += $quantity : $user->ingots -= $quantity;
                $user->save();

                $ingot = Ingots::firstOrCreate(['user_id' => $user->id],['quantity' => 0]);
                $type == IngotsLog::TYPE_INCRE ? $ingot->quantity += $quantity : $ingot->quantity -= $quantity;
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

    /**
     * @param $key
     * @return \Illuminate\Database\Eloquent\Model|null|object|static
     */
    public function getValueByKey($key)
    {
        return IngotsConfig::getConfigByKey($key);
    }

    /**
     * @param $key
     * @return mixed
     */
    public function getRedisValue($key)
    {
        return Redis::get("ingots_{$key}_" . Auth::guard('api')->id());
    }

    /**
     * @param $key
     * @param $desc
     */
    public function limitation($key, $desc)
    {
        $times = $this->getRedisValue($key);

        if ($this->getValueByKey($key)->limitation != 0 && (int)$times >= $this->getValueByKey($key)->limitation) {
            return;
        }

        try {
            $this->update($this->getValueByKey($key)->value, $desc, IngotsLog::TYPE_INCRE, Auth::guard('api')->user());
        } catch (QueryException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
        }

        Redis::set("ingots_{$key}_" . Auth::guard('api')->id(), $times + 1);
        Redis::expireAt("ingots_{$key}_" . Auth::guard('api')->id(), mktime(23, 59, 59, date("m"), date("d"), date("Y")));

    }


}