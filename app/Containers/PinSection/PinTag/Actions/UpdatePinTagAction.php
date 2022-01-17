<?php

namespace App\Containers\PinSection\PinTag\Actions;

use App\Containers\PinSection\PinTag\Models\PinTag;
use App\Containers\PinSection\PinTag\Tasks\UpdatePinTagTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class UpdatePinTagAction extends Action
{
    public function run(Request $request): PinTag
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(UpdatePinTagTask::class)->run($request->id, $data);
    }
}
