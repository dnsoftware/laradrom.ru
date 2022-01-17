<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddFieldOrderNumToPinTypesTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('pin_types', function (Blueprint $table) {

            $table->integer('order_num')->index()->after('pin_count')->default(0);

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {

    }
}
