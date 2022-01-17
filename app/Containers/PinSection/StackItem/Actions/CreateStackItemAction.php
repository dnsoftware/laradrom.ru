<?php

namespace App\Containers\PinSection\StackItem\Actions;

use App\Containers\PinSection\StackItem\Models\StackItem;
use App\Containers\PinSection\StackItem\Tasks\CreateStackItemTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class CreateStackItemAction extends Action
{
    public function run(Request $request): StackItem
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(CreateStackItemTask::class)->run($data);
    }
}
