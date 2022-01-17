<?php

namespace App\Containers\PinSection\PinType\Tasks;

use App\Containers\PinSection\PinType\Models\PinType;
use App\Ship\Parents\Tasks\Task;

class GetPintypeBySlugTask extends Task
{
    public function __construct()
    {
        // ..
    }

    public function run(string $slug)
    {
        $pinType = PinType::where('slug', $slug)->first();
        return $pinType;
    }
}
