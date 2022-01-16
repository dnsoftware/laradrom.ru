<?php

namespace App\Containers\ExampleSection\Example\Actions;

use App\Containers\ExampleSection\Example\Models\Example;
use App\Containers\ExampleSection\Example\Tasks\FindExampleByIdTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class FindExampleByIdAction extends Action
{
    public function run(Request $request): Example
    {
        return app(FindExampleByIdTask::class)->run($request->id);
    }
}
