<?php

namespace App\Containers\PinSection\PinItemMain\Actions;

use App\Containers\PinSection\PinItemMain\Models\PinItemMain;
use App\Containers\PinSection\PinItemMain\Tasks\CreatePinItemMainTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class CreatePinItemMainAction extends Action
{
    public function run(Request $request): PinItemMain
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(CreatePinItemMainTask::class)->run($data);
    }
}
