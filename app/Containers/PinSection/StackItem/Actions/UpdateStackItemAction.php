<?php

namespace App\Containers\PinSection\StackItem\Actions;

use App\Containers\PinSection\StackItem\Models\StackItem;
use App\Containers\PinSection\StackItem\Tasks\UpdateStackItemTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class UpdateStackItemAction extends Action
{
    public function run(Request $request): StackItem
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(UpdateStackItemTask::class)->run($request->id, $data);
    }
}
