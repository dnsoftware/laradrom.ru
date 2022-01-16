<?php

namespace App\Containers\PinSection\PinItemMain\Actions;

use App\Containers\PinSection\PinItemMain\Models\PinItemMain;
use App\Containers\PinSection\PinItemMain\Tasks\UpdatePinItemMainTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class UpdatePinItemMainAction extends Action
{
    public function run(Request $request): PinItemMain
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(UpdatePinItemMainTask::class)->run($request->id, $data);
    }
}
