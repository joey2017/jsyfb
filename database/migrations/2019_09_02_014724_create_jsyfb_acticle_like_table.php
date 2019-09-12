<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJsyfbActicleLikeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jsyfb_acticle_like', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->comment('用户id');
            $table->integer('article_id')->comment('文章id');
            //$table->timestamps(false);
            $table->timestamp('created_at')->comment('创建时间');
            \Illuminate\Support\Facades\DB::statement("ALTER TABLE `jsyfb_acticle_like` comment '点赞表'");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jsyfb_acticle_like');
    }
}
