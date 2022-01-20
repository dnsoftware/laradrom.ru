<?php

namespace App\Containers\AppSection\Common\Tasks;

use App\Ship\Parents\Tasks\Task;
use Database\Seeders\DatabaseSeeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeedByTestSqlDumpTask extends Task
{
    public function run()
    {
        (new DatabaseSeeder())->run();
    }
}
