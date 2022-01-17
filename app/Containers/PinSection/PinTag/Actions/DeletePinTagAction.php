<?php

namespace App\Containers\PinSection\PinTag\Actions;

use App\Containers\PinSection\PinTag\Tasks\DeletePinTagTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class DeletePinTagAction extends Action
{
    public function run(Request $request)
    {
        return app(DeletePinTagTask::class)->run($request->id);
    }
}
