<?php

namespace App\Containers\AppSection\Common\Tasks;

use App\Ship\Parents\Tasks\Task;
use Database\Seeders\DatabaseSeeder;

class DatabaseSeedByTestSqlDumpTask extends Task
{
    public function run()
    {
        (new DatabaseSeeder())->run();
    }
}
