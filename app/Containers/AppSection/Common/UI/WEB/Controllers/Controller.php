<?php

namespace App\Containers\AppSection\Common\UI\WEB\Controllers;

use App\Containers\AppSection\Common\Tasks\DatabaseSeedByTestSqlDumpTask;
use App\Containers\AppSection\Common\Tasks\DropAllDatabaseTablesTask;
use App\Ship\Parents\Controllers\WebController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class Controller extends WebController
{
    //
    public function dbClearAndSeed()
    {
        die('deprecated');

        DB::transaction(function () {
            //app(DropAllDatabaseTablesTask::class)->run();
            //Artisan::call('migrate:fresh --seed');
//            app(DatabaseSeedByTestSqlDumpTask::class)->run();
        });
    }
}
