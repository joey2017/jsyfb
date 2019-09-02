<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJsyfbMemberTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jsyfb_member', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->comment('用户id');
            $table->decimal('cost')->nullable(false)->default('0.00')->comment('消费金额');
            $table->tinyInteger('status')->nullable(false)->default(1)->comment('状态：0禁用1正常');
            $table->tinyInteger('is_deleted')->nullable(false)->default(0)->comment('是否删除：0否1是');
            $table->timestamp('expire_time')->nullable(true)->default(null)->comment('到期时间');
            $table->index('user_id','member-user_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jsyfb_member');
    }
}
