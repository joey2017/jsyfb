<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJsyfbActicleCommentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jsyfb_acticle_comment', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->nullable()->comment('用户id');
            $table->integer('article_id')->nullable()->comment('文章id');
            $table->text('interpretation')->comment('解读');
            $table->text('measures')->comment('措施');
            $table->timestamps();
            $table->index(['user_id','article_id'],'comment-user-acticle');
        });

        \Illuminate\Support\Facades\DB::statement("ALTER TABLE `jsyfb_acticle_comment` comment '评论表'");

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jsyfb_acticle_comment');
    }
}
