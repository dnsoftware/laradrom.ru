<?php

namespace Database\Seeders;

use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Containers\PinSection\PinType\Models\PinType;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $sql = base_path('database/sql_dumps/test_data.sql');
        DB::unprepared(file_get_contents($sql));
        //DB::connection()->getPdo()->exec(file_get_contents($sql));

        // \App\Models\User::factory(10)->create();
    }
}
