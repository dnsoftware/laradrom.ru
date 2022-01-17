<?php

namespace App\Containers\PinSection\PinItemboard\Actions;

use App\Containers\PinSection\PinItemboard\Models\PinItemboard;
use App\Containers\PinSection\PinItemboard\Tasks\UpdatePinItemboardTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class UpdatePinItemboardAction extends Action
{
    public function run(Request $request): PinItemboard
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(UpdatePinItemboardTask::class)->run($request->id, $data);
    }
}
