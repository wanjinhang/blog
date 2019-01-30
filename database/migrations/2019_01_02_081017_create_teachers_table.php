<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTeachersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teachers', function (Blueprint $table) {
            $table->increments('id')->comment('教师编号');
            $table->string('username')->comment('教师姓名');
            $table->string('password')->comment('登录密码');
            $table->string('sex')->comment('性别');
            $table->string('job_title')->comment('职称');
            $table->string('content')->comment('备注/研究方向');
            $table->string('phone')->comment('联系电话');
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
        Schema::dropIfExists('teachers');
    }
}
