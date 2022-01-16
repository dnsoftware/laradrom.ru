<?php

namespace App\Containers\ExampleSection\Example\UI\API\Controllers;

use App\Containers\ExampleSection\Example\UI\API\Requests\CreateExampleRequest;
use App\Containers\ExampleSection\Example\UI\API\Requests\DeleteExampleRequest;
use App\Containers\ExampleSection\Example\UI\API\Requests\GetAllExamplesRequest;
use App\Containers\ExampleSection\Example\UI\API\Requests\FindExampleByIdRequest;
use App\Containers\ExampleSection\Example\UI\API\Requests\UpdateExampleRequest;
use App\Containers\ExampleSection\Example\UI\API\Transformers\ExampleTransformer;
use App\Containers\ExampleSection\Example\Actions\CreateExampleAction;
use App\Containers\ExampleSection\Example\Actions\FindExampleByIdAction;
use App\Containers\ExampleSection\Example\Actions\GetAllExamplesAction;
use App\Containers\ExampleSection\Example\Actions\UpdateExampleAction;
use App\Containers\ExampleSection\Example\Actions\DeleteExampleAction;
use App\Ship\Parents\Controllers\ApiController;
use Illuminate\Http\JsonResponse;

class Controller extends ApiController
{
    public function createExample(CreateExampleRequest $request): JsonResponse
    {
        $example = app(CreateExampleAction::class)->run($request);
        return $this->created($this->transform($example, ExampleTransformer::class));
    }

    public function findExampleById(FindExampleByIdRequest $request): array
    {
        $example = app(FindExampleByIdAction::class)->run($request);
        return $this->transform($example, ExampleTransformer::class);
    }

    public function getAllExamples(GetAllExamplesRequest $request): array
    {
        $examples = app(GetAllExamplesAction::class)->run($request);
        return $this->transform($examples, ExampleTransformer::class);
    }

    public function updateExample(UpdateExampleRequest $request): array
    {
        $example = app(UpdateExampleAction::class)->run($request);
        return $this->transform($example, ExampleTransformer::class);
    }

    public function deleteExample(DeleteExampleRequest $request): JsonResponse
    {
        app(DeleteExampleAction::class)->run($request);
        return $this->noContent();
    }
}
