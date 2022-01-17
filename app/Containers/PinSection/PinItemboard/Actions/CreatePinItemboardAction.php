<?php

namespace App\Containers\PinSection\PinItemboard\Actions;

use App\Containers\PinSection\PinItemboard\Models\PinItemboard;
use App\Containers\PinSection\PinItemboard\Tasks\CreatePinItemboardTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class CreatePinItemboardAction extends Action
{
    public function run(Request $request): PinItemboard
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(CreatePinItemboardTask::class)->run($data);
    }
}
