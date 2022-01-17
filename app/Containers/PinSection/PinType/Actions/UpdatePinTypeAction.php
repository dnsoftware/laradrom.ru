<?php

namespace App\Containers\PinSection\PinType\Actions;

use App\Containers\PinSection\PinType\Models\PinType;
use App\Containers\PinSection\PinType\Tasks\UpdatePinTypeTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class UpdatePinTypeAction extends Action
{
    public function run(Request $request): PinType
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(UpdatePinTypeTask::class)->run($request->id, $data);
    }
}
