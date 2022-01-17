<?php

namespace App\Containers\PinSection\PinTag\Actions;

use App\Containers\PinSection\PinTag\Models\PinTag;
use App\Containers\PinSection\PinTag\Tasks\FindPinTagByIdTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class FindPinTagByIdAction extends Action
{
    public function run(Request $request): PinTag
    {
        return app(FindPinTagByIdTask::class)->run($request->id);
    }
}
