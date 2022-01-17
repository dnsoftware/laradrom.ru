<?php

namespace App\Containers\PinSection\StackItem\Actions;

use App\Containers\PinSection\StackItem\Tasks\GetAllStackItemsTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class GetAllStackItemsAction extends Action
{
    public function run()
    {
        return app(GetAllStackItemsTask::class)->addRequestCriteria()->run();
    }
}
