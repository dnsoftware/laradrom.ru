<?php

namespace App\Containers\PinSection\PinTag\Actions;

use App\Containers\PinSection\PinTag\Tasks\GetAllPinTagsTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class GetAllPinTagsAction extends Action
{
    public function run(Request $request)
    {
        return app(GetAllPinTagsTask::class)->addRequestCriteria()->run();
    }
}
