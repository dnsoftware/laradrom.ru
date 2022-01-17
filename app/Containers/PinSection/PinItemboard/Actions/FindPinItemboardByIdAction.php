<?php

namespace App\Containers\PinSection\PinItemboard\Actions;

use App\Containers\PinSection\PinItemboard\Models\PinItemboard;
use App\Containers\PinSection\PinItemboard\Tasks\FindPinItemboardByIdTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class FindPinItemboardByIdAction extends Action
{
    public function run(Request $request): PinItemboard
    {
        return app(FindPinItemboardByIdTask::class)->run($request->id);
    }
}
