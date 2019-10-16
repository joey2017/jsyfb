<?php

namespace App\Services;

use App\Models\AnswerScore;
use Doctrine\DBAL\Driver\PDOException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ScoreService
{
    /**
     * @param $score
     */
    public function update($score)
    {
        try {
            DB::transaction(function () use ($score) {
                $user = Auth::guard('api')->user();
                $user->score += $score;
                $user->save();

                $answer_score = AnswerScore::firstOrCreate(['user_id' => $user->id,'date' => date('Y-m-d')]);
                $answer_score->score += $score;
                $answer_score->save();
            });
        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
        }

    }

}