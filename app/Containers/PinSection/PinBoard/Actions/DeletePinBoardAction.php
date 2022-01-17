<?php

namespace App\Containers\PinSection\PinBoard\Actions;

use App\Containers\PinSection\PinBoard\Tasks\DeletePinBoardTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class DeletePinBoardAction extends Action
{
    public function run(Request $request)
    {
        return app(DeletePinBoardTask::class)->run($request->id);
    }
}
