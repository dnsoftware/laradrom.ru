<?php

namespace App\Containers\PinSection\PinType\Actions;

use App\Containers\PinSection\PinType\Tasks\DeletePinTypeTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class DeletePinTypeAction extends Action
{
    public function run(Request $request)
    {
        return app(DeletePinTypeTask::class)->run($request->id);
    }
}
