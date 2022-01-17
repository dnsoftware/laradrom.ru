<?php

namespace App\Containers\PinSection\PinItemboard\Actions;

use App\Containers\PinSection\PinItemboard\Tasks\DeletePinItemboardTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class DeletePinItemboardAction extends Action
{
    public function run(Request $request)
    {
        return app(DeletePinItemboardTask::class)->run($request->id);
    }
}
