<?php

namespace App\Containers\PinSection\PinType\Tasks;

use App\Containers\PinSection\PinType\Models\PinType;
use App\Ship\Parents\Tasks\Task;

class GetPintypeIdBySlugTask extends Task
{
    public function __construct()
    {
        // ..
    }

    public function run(string $slug)
    {
        if ($pintype = PinType::where('slug', $slug)->first()) {
            return $pintype->id;
        } else {
            return 0;
        }
    }
}
