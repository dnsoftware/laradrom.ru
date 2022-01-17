<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddSearchableFieldInPinItemTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('pin_items', function (Blueprint $table) {

        });

        DB::statement('ALTER TABLE pin_items ADD searchable tsvector NULL');
        DB::statement('CREATE INDEX pin_items_searchable_index ON pin_items USING GIN (searchable)');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {

    }
}
