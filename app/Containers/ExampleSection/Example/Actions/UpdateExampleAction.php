<?php

namespace App\Containers\ExampleSection\Example\Actions;

use App\Containers\ExampleSection\Example\Models\Example;
use App\Containers\ExampleSection\Example\Tasks\UpdateExampleTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class UpdateExampleAction extends Action
{
    public function run(Request $request): Example
    {
        $data = $request->sanitizeInput([
            // add your request data here
        ]);

        return app(UpdateExampleTask::class)->run($request->id, $data);
    }
}
