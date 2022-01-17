<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePinitemsStackitemsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pinitems_stackitems', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('pinitem_id')->index();
            $table->unsignedBigInteger('stackitem_id')->index();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pinitems_stackitems');
    }
}
