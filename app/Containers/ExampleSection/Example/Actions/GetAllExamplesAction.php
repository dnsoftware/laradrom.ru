<?php

namespace App\Containers\ExampleSection\Example\Actions;

use App\Containers\ExampleSection\Example\Tasks\GetAllExamplesTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class GetAllExamplesAction extends Action
{
    public function run(Request $request)
    {
        return app(GetAllExamplesTask::class)->addRequestCriteria()->run();
    }
}
