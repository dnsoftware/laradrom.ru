<?php

namespace App\Containers\PinSection\StackItem\Actions;

use App\Containers\PinSection\StackItem\Tasks\DeleteStackItemTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class DeleteStackItemAction extends Action
{
    public function run(Request $request)
    {
        return app(DeleteStackItemTask::class)->run($request->id);
    }
}
