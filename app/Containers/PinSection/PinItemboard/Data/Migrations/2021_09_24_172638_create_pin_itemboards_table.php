<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePinItemboardsTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pin_itemboards', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('pin_id')->index()->comment('код первичного пина');
            $table->unsignedBigInteger('board_id')->index()->comment('доска на которой размещен (перепинен) пин');
            $table->unsignedBigInteger('repin_from_board_id')->index()->comment('код доски откуда перепинено (для владельца совпадает с board_id)');
            $table->unsignedTinyInteger('is_primary_board')->default(0)->index()->comment('первичная доска размещения');
            $table->unsignedBigInteger('pin_user_id')->nullable()->index()->comment('первичный владелец пина (владелец pin_id)');
            $table->unsignedBigInteger('board_user_id')->nullable()->index()->comment('разместивший (перепинивший) пин (владелец board_id)');
            $table->unsignedBigInteger('repin_from_user_id')->nullable()->index()->comment('код юзера с доски которого перепинено (юзер, владелец repin_from_board_id, для владельца совпадает с pin_user_id)');

            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pin_itemboards');
    }
}
