<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddFieldSlugToStackItemsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('stack_items', function (Blueprint $table) {
            $table->string('slug', 128)->after('name');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {

    }
}
