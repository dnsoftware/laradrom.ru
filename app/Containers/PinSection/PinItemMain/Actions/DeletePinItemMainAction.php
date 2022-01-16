<?php

namespace App\Containers\PinSection\PinItemMain\Actions;

use App\Containers\PinSection\PinItemMain\Tasks\DeletePinItemMainTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class DeletePinItemMainAction extends Action
{
    public function run(Request $request)
    {
        return app(DeletePinItemMainTask::class)->run($request->id);
    }
}
