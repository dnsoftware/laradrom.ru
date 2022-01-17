<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePinItemsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pin_items', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('user_id')->index();
            $table->string('title', 255);
            $table->string('slug', 255);
            $table->text('essence')->nullable();
            $table->text('content')->nullable();
            $table->string('target_link', 255)->nullable()->default('');
            $table->string('image', 255)->nullable()->default('');
            $table->tinyInteger('is_published')->index()->default(1);

            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pin_items');
    }
}
