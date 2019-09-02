<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJsyfbIngotsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jsyfb_ingots', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->nullable()->comment('用户id');
            $table->integer('quantity')->nullable()->comment('数量');
            $table->tinyInteger('status')->nullable(false)->default(1)->comment('状态：0禁用1正常');
            $table->tinyInteger('is_deleted')->nullable()->default(0)->comment('是否删除：0否1是');
            $table->timestamp('expire_time')->comment('到期时间');
            $table->timestamps();
            $table->index('user_id','ingots-user_id');
        });
        \Illuminate\Support\Facades\DB::statement('ALTER TABLE `jsyfb_ingots` comment "元宝表"');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jsyfb_ingots');
    }
}
