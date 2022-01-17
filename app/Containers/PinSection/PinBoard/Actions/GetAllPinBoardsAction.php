<?php

namespace App\Containers\PinSection\PinBoard\Actions;

use App\Containers\PinSection\PinBoard\Tasks\GetAllPinBoardsTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class GetAllPinBoardsAction extends Action
{
    public function run(Request $request)
    {
        return app(GetAllPinBoardsTask::class)->addRequestCriteria()->run();
    }
}
