<?php

namespace App\Containers\PinSection\StackItem\Actions;

use App\Containers\PinSection\StackItem\Models\StackItem;
use App\Containers\PinSection\StackItem\Tasks\FindStackItemByIdTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class FindStackItemByIdAction extends Action
{
    public function run(Request $request): StackItem
    {
        return app(FindStackItemByIdTask::class)->run($request->id);
    }
}
