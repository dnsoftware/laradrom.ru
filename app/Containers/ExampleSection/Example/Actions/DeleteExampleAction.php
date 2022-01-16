<?php

namespace App\Containers\ExampleSection\Example\Actions;

use App\Containers\ExampleSection\Example\Tasks\DeleteExampleTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;

class DeleteExampleAction extends Action
{
    public function run(Request $request)
    {
        return app(DeleteExampleTask::class)->run($request->id);
    }
}
