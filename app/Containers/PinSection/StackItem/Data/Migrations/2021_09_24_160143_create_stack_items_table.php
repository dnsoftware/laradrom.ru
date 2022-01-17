<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateStackItemsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('stack_items', function (Blueprint $table) {
            $table->id();

            $table->string('name', 255);
            $table->string('hint', 255)->nullable();
            $table->integer('pin_count')->default(0);
            $table->string('keywords', 255)->nullable();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('stack_items');
    }
}
