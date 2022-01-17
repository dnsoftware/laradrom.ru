<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddPintypeIdFieldInPinItemsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::disableForeignKeyConstraints();
        Schema::table('pin_items', function (Blueprint $table) {

            $table->unsignedBigInteger('pintype_id')->index()->after('user_id');
            $table->foreign('pintype_id')->references('id')->on('pin_types');

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
