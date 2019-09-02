<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJsyfbBalanceTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jsyfb_balance', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->nullable()->comment('用户id');
            $table->decimal('amount')->nullable()->comment('金额大小');
            $table->tinyInteger('status')->default(1)->comment('状态：0禁用1正常');
            $table->tinyInteger('is_deleted')->default(0)->comment('是否删除：0否1是');
            $table->timestamps();
            $table->index('user_id','balance-user_id');
        });

        \Illuminate\Support\Facades\DB::statement('ALTER TABLE `jsyfb_balance` comment "余额表"');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jsyfb_balance');
    }
}
