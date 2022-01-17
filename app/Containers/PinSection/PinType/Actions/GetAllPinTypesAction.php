<?php

namespace App\Containers\PinSection\PinType\Actions;

use App\Containers\PinSection\PinType\Tasks\GetAllPinTypesTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class GetAllPinTypesAction extends Action
{
    public function run()
    {
        return app(GetAllPinTypesTask::class)->addRequestCriteria()->run();
    }
}
