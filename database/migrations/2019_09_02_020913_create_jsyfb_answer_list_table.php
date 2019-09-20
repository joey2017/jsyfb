<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJsyfbAnswerListTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jsyfb_answer_list', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title',200)->nullable()->comment('题目');
            $table->string('A',100)->nullable()->comment('选项A');
            $table->string('B',100)->nullable()->comment('选项B');
            $table->string('C',100)->nullable()->comment('选项C');
            $table->string('D',100)->nullable()->comment('选项D');
            $table->tinyInteger('status')->default(1)->comment('是否删除：0否1是');
            $table->tinyInteger('is_deleted')->default(0)->comment('是否删除：0否1是');
            $table->timestamps();
        });
        \Illuminate\Support\Facades\DB::statement('ALTER TABLE `jsyfb_answer_list` comment "答题表"');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jsyfb_answer_list');
    }
}
