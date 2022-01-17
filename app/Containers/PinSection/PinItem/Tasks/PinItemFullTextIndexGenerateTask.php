<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Ship\Parents\Tasks\Task;

class PinItemFullTextIndexGenerateTask extends Task
{
    public function run($pin_id)
    {
        PinItem::find($pin_id)->searchable();
    }
}
