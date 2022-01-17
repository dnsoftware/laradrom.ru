<?php

namespace App\Containers\PinSection\PinBoard\Actions;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Containers\PinSection\PinBoard\Tasks\CreatePinBoardTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class CreatePinBoardAction extends Action
{
    public function run(Request $request): PinBoard
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(CreatePinBoardTask::class)->run($data);
    }
}
