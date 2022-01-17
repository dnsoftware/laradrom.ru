<?php

namespace App\Containers\PinSection\PinType\Actions;

use App\Containers\PinSection\PinType\Models\PinType;
use App\Containers\PinSection\PinType\Tasks\FindPinTypeByIdTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class FindPinTypeByIdAction extends Action
{
    public function run(Request $request): PinType
    {
        return app(FindPinTypeByIdTask::class)->run($request->id);
    }
}
