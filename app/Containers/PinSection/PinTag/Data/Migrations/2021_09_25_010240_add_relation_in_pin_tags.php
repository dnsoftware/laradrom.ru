<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddRelationInPinTags extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::disableForeignKeyConstraints();
        Schema::table('pin_tags', function (Blueprint $table) {

            $table->foreign('pin_id')->references('id')->on('pin_items');
            $table->foreign('tag_id')->references('id')->on('tags');

        });
        Schema::enableForeignKeyConstraints();
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {

    }
}
