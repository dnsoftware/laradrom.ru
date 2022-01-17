<?php

namespace App\Containers\PinSection\PinItemboard\Actions;

use App\Containers\PinSection\PinItemboard\Tasks\GetAllPinItemboardsTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class GetAllPinItemboardsAction extends Action
{
    public function run(Request $request)
    {
        return app(GetAllPinItemboardsTask::class)->addRequestCriteria()->run();
    }
}
