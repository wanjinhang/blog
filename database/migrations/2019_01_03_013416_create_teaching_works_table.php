<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTeachingWorksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teaching_works', function (Blueprint $table) {
            $table->increments('id');
            $table->string('coures_id')->comment('课程编号');
            $table->string('class_name')->comment('班级名称');
            $table->string('teacher_id')->comment('教师编号');
            $table->string('start_time')->comment('开课时间');
            $table->string('type')->comment('课程类型');
            $table->string('duration')->comment('学时');
            $table->string('remark')->comment('备注');
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
        Schema::dropIfExists('teaching_works');
    }
}
