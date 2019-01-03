<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSciencesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sciences', function (Blueprint $table) {
            $table->increments('id');
            $table->string('science_name')->comment('科研名称');
            $table->string('science_type')->comment('科研类型');
            $table->string('level')->comment('等级');
            $table->string('award')->comment('获奖情况');
            $table->string('grade')->comment('学年');
            $table->string('user_id')->comment('所属人员');
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
        Schema::dropIfExists('sciences');
    }
}
