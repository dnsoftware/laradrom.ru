<?php

namespace App\Containers\PinSection\PinItem\Actions;

use App\Containers\PinSection\PinItem\Tasks\DeletePinItemTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class DeletePinItemAction extends Action
{
    public function run(Request $request)
    {
        return app(DeletePinItemTask::class)->run($request->id);
    }
}
