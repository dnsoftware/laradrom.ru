<?php

namespace App\Containers\ExampleSection\Example\UI\WEB\Controllers;

use App\Containers\ExampleSection\Example\UI\WEB\Requests\CreateExampleRequest;
use App\Containers\ExampleSection\Example\UI\WEB\Requests\DeleteExampleRequest;
use App\Containers\ExampleSection\Example\UI\WEB\Requests\GetAllExamplesRequest;
use App\Containers\ExampleSection\Example\UI\WEB\Requests\FindExampleByIdRequest;
use App\Containers\ExampleSection\Example\UI\WEB\Requests\UpdateExampleRequest;
use App\Containers\ExampleSection\Example\UI\WEB\Requests\StoreExampleRequest;
use App\Containers\ExampleSection\Example\UI\WEB\Requests\EditExampleRequest;
use App\Containers\ExampleSection\Example\Actions\CreateExampleAction;
use App\Containers\ExampleSection\Example\Actions\FindExampleByIdAction;
use App\Containers\ExampleSection\Example\Actions\GetAllExamplesAction;
use App\Containers\ExampleSection\Example\Actions\UpdateExampleAction;
use App\Containers\ExampleSection\Example\Actions\DeleteExampleAction;
use App\Ship\Parents\Controllers\WebController;

class Controller extends WebController
{
    public function index(GetAllExamplesRequest $request)
    {
        $examples = app(GetAllExamplesAction::class)->run($request);
        // ..
    }

    public function show(FindExampleByIdRequest $request)
    {
        $example = app(FindExampleByIdAction::class)->run($request);
        // ..
    }

    public function create(CreateExampleRequest $request)
    {
        // ..
    }

    public function store(StoreExampleRequest $request)
    {
        $example = app(CreateExampleAction::class)->run($request);
        // ..
    }

    public function edit(EditExampleRequest $request)
    {
        $example = app(FindExampleByIdAction::class)->run($request);
        // ..
    }

    public function update(UpdateExampleRequest $request)
    {
        $example = app(UpdateExampleAction::class)->run($request);
        // ..
    }

    public function destroy(DeleteExampleRequest $request)
    {
         $result = app(DeleteExampleAction::class)->run($request);
         // ..
    }
}
