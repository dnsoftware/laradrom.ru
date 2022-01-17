<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Ship\Parents\Tasks\Task;

class MakePinitemApiRoutePartTask extends Task
{
    public function run()
    {
        $pinitemApiRoutePart = route('api_pinitem_show', ['id' => '___']);
        $pinitemApiRoutePart = str_replace('___', '', $pinitemApiRoutePart);

        return $pinitemApiRoutePart;
    }

}
