<?php

namespace App\Containers\PinSection\PinItemMain\Actions;

use App\Containers\PinSection\PinItemMain\Models\PinItemMain;
use App\Containers\PinSection\PinItemMain\Tasks\FindPinItemMainByIdTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class FindPinItemMainByIdAction extends Action
{
    public function run(Request $request): PinItemMain
    {
        return app(FindPinItemMainByIdTask::class)->run($request->id);
    }
}
