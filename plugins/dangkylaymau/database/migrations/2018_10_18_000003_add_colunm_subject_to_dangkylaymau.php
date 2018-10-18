<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColunmSubjectTodangkylaymau extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('dangkylaymaus', function (Blueprint $table) {
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
        Schema::table('dangkylaymaus', function (Blueprint $table) {
            $table->dropColumn('subject');
        });
    }
}
