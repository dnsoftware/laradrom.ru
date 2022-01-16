<?php

namespace App\Containers\PinSection\PinItemMain\Actions;

use App\Containers\PinSection\PinItemMain\Tasks\GetAllPinItemMainsTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class GetAllPinItemMainsAction extends Action
{
    public function run(Request $request)
    {
        return app(GetAllPinItemMainsTask::class)->addRequestCriteria()->run();
    }
}
