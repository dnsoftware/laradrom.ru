<?php

namespace App\Containers\ExampleSection\Example\Actions;

use App\Containers\ExampleSection\Example\Models\Example;
use App\Containers\ExampleSection\Example\Tasks\CreateExampleTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class CreateExampleAction extends Action
{
    public function run(Request $request): Example
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(CreateExampleTask::class)->run($data);
    }
}
