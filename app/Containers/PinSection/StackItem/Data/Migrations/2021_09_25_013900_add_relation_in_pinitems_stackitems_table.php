<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddRelationInPinitemsStackitemsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('pinitems_stackitems', function (Blueprint $table) {

            $table->foreign('pinitem_id')->references('id')->on('pin_items');
            $table->foreign('stackitem_id')->references('id')->on('stack_items');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {

    }
}
