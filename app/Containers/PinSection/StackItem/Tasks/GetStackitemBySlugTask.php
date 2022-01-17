<?php

namespace App\Containers\PinSection\StackItem\Tasks;

use App\Containers\PinSection\StackItem\Models\StackItem;
use App\Ship\Parents\Tasks\Task;

class GetStackitemBySlugTask extends Task
{
    public function __construct()
    {
        // ..
    }

    public function run(string $slug)
    {
        return StackItem::where('slug', $slug)->first();
    }
}
