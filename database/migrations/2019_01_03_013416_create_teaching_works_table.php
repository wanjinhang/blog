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
            $table->string('course_id')->comment('课程编号');
            $table->string('classes_id')->comment('班级编号');
            $table->string('teacher_id')->comment('教师编号');
            $table->string('start_time')->comment('开课时间');
            $table->string('remark')->comment('备注')->nullable();
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
