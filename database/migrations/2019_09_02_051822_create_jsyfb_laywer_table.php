<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJsyfbLaywerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jsyfb_laywer', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name')->nullable(false)->comment('姓名');
            $table->tinyInteger('class_id')->nullable()->comment('职务分类id');
            $table->tinyInteger('level')->nullable()->comment('等级');
            $table->string('title',100)->nullable()->comment('头衔，职务');
            $table->tinyInteger('status')->default('1')->comment('状态：0禁用1正常');
            $table->tinyInteger('is_deleted')->default('0')->comment('是否删除：0否1是');
            $table->timestamps();
        });
        \Illuminate\Support\Facades\DB::statement('ALTER TABLE `jsyfb_laywer` comment "律师表"');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jsyfb_laywer');
    }
}
