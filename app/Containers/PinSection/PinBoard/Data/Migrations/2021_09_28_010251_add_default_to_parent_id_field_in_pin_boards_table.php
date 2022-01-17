<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddDefaultToParentIdFieldInPinBoardsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('pin_boards', function (Blueprint $table) {

            $table->unsignedBigInteger('parent_id')->default(0)->change();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {

    }
}
