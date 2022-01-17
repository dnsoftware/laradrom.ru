<?php

namespace App\Containers\AppSection\Common\Tasks;

use App\Ship\Parents\Tasks\Task;
use Illuminate\Support\Facades\DB;

class DropAllDatabaseTablesTask extends Task
{
    public function run()
    {
        // защита от случайного удаления в проде
        if (config('app.env') == 'production') {
            return false;
        }

        // дропаем все таблицы
        $delete_list = DB::select("SELECT 'drop table if exists \"' || tablename || '\" cascade;' as pg_tbl_drop
                FROM pg_tables
                WHERE schemaname='public';");
        foreach($delete_list as $dkey => $dval) {
            DB::statement($dval->pg_tbl_drop);
        }

        // На всякий случай дропаем все последовательности
        $delete_seq_list = DB::select("SELECT 'drop sequence if exists \"' || relname || '\" cascade;' as pg_sec_drop
                            FROM pg_class
                            WHERE relkind = 'S';");
        foreach($delete_seq_list as $dkey => $dval) {
            DB::statement($dval->pg_sec_drop);
        }

    }
}
