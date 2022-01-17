<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddFieldOrderNumToStackItemsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('stack_items', function (Blueprint $table) {

            $table->integer('order_num')->after('keywords')->index()->default(0);

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {

    }
}
