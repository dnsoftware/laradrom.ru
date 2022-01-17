<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePinBoardsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pin_boards', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('parent_id')->index();
            $table->unsignedBigInteger('user_id')->index();
            $table->string('name');

            $table->timestamps();
            //$table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pin_boards');
    }
}
