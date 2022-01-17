<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddPublicationStatusFieldToPinItemsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('pin_items', function (Blueprint $table) {

            $table->char('publication_status', 1)->default('a')->index()->after('is_published');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {

    }
}
