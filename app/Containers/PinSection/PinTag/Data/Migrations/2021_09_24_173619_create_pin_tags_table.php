<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePinTagsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pin_tags', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('pin_id')->index();
            $table->unsignedBigInteger('tag_id')->index();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pin_tags');
    }
}
