<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddSlugFieldToPintypesTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('pin_types', function (Blueprint $table) {

            $table->string('slug', 64)->after('name');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {

    }
}
