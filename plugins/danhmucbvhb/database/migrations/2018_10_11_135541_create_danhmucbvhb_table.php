<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDanhmucbvhbTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('danhmucbvhbs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 255);
            $table->string('description', 400);
            $table->text('content');
            $table->tinyInteger('status')->unsigned()->default(1);
            $table->string('image', 255)->nullable();
            $table->timestamps();
            $table->engine = 'InnoDB';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('danhmucbvhbs');
    }
}
