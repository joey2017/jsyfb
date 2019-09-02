<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJsyfbAttentionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jsyfb_attention', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->nullable()->comment('用户id');
            $table->tinyInteger('role_id')->nullable()->comment('角色id');
            $table->string('role')->nullable()->comment('角色');
            $table->tinyInteger('status')->default(1)->comment('状态：0禁用1正常');
            $table->tinyInteger('is_deleted')->nullable(false)->default(0)->comment('是否删除：0否1是');
            $table->timestamps();
        });
        \Illuminate\Support\Facades\DB::statement('ALTER TABLE `jsyfb_attention` comment "我的关注表"');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jsyfb_attention');
    }
}
