<?php

namespace App\Containers\PinSection\PinTag\Actions;

use App\Containers\PinSection\PinTag\Models\PinTag;
use App\Containers\PinSection\PinTag\Tasks\CreatePinTagTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class CreatePinTagAction extends Action
{
    public function run(Request $request): PinTag
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(CreatePinTagTask::class)->run($data);
    }
}
