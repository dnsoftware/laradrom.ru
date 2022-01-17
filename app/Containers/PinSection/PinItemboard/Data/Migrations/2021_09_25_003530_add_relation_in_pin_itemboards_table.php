<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddRelationInPinItemboardsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('pin_itemboards', function (Blueprint $table) {

            $table->foreign('pin_id')->references('id')->on('pin_items');
            $table->foreign('board_id')->references('id')->on('pin_boards');
            $table->foreign('repin_from_board_id')->references('id')->on('pin_boards');
            $table->foreign('pin_user_id')->references('id')->on('users');
            $table->foreign('board_user_id')->references('id')->on('users');
            $table->foreign('repin_from_user_id')->references('id')->on('users');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {

    }
}
