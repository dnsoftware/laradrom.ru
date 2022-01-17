<?php

namespace App\Containers\PinSection\PinItem\Actions;

use App\Containers\PinSection\PinItem\Tasks\MakePinitemApiRoutePartTask;
use App\Ship\Parents\Actions\Action;

class MakePinitemApiRoutePartAction extends Action
{
    public function run()
    {
        return app(MakePinitemApiRoutePartTask::class)->run();
    }
}
