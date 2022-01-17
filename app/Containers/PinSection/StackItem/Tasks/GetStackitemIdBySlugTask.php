<?php

namespace App\Containers\PinSection\StackItem\Tasks;

use App\Containers\PinSection\StackItem\Models\StackItem;
use App\Ship\Parents\Tasks\Task;

class GetStackitemIdBySlugTask extends Task
{
    public function __construct()
    {
        // ..
    }

    public function run(string $slug)
    {
        if ($stackitem = StackItem::where('slug', $slug)->first()) {
            return $stackitem->id;
        } else {
            return 0;
        }
    }
}
