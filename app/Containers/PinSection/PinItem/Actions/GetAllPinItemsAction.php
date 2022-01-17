<?php

namespace App\Containers\PinSection\PinItem\Actions;

use App\Containers\PinSection\PinItem\Tasks\GetAllPinItemsTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class GetAllPinItemsAction extends Action
{
    public function run(Request $request)
    {
        return app(GetAllPinItemsTask::class)->addRequestCriteria()->run();
    }
}
