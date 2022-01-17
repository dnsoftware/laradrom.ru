<?php

namespace App\Containers\PinSection\PinBoard\Actions;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Containers\PinSection\PinBoard\Tasks\FindPinBoardByIdTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class FindPinBoardByIdAction extends Action
{
    public function run(Request $request): PinBoard
    {
        return app(FindPinBoardByIdTask::class)->run($request->id);
    }
}
