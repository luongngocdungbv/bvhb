<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColunmSubjectToDangkykham extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('dangkykhams', function (Blueprint $table) {
            $table->string('subject', 120)
                  ->nullable()
                  ->after('content');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('dangkykhams', function (Blueprint $table) {
            $table->dropColumn('subject');
        });
    }
}
