<?php

namespace App\Containers\PinSection\PinItemMain\UI\API\Controllers;

use App\Containers\PinSection\PinItemMain\UI\API\Requests\CreatePinItemMainRequest;
use App\Containers\PinSection\PinItemMain\UI\API\Requests\DeletePinItemMainRequest;
use App\Containers\PinSection\PinItemMain\UI\API\Requests\FindPinItemMainByIdRequest;
use App\Containers\PinSection\PinItemMain\UI\API\Requests\GetPinItemsRequest;
use App\Containers\PinSection\PinItemMain\UI\API\Requests\UpdatePinItemMainRequest;
use App\Containers\PinSection\PinItemMain\UI\API\Transformers\PinItemMainTransformer;
use App\Containers\PinSection\PinItemMain\Actions\CreatePinItemMainAction;
use App\Containers\PinSection\PinItemMain\Actions\FindPinItemMainByIdAction;
use App\Containers\PinSection\PinItemMain\Actions\GetAllPinItemMainsAction;
use App\Containers\PinSection\PinItemMain\Actions\UpdatePinItemMainAction;
use App\Containers\PinSection\PinItemMain\Actions\DeletePinItemMainAction;
use App\Ship\Parents\Controllers\ApiController;
use Illuminate\Http\JsonResponse;

class Controller extends ApiController
{
    public function getPinItems(GetPinItemsRequest $request): array
    {
        $pinitems = app(GetAllPinItemMainsAction::class)->run($request);
        return $this->transform($pinitems, PinItemMainTransformer::class);
    }





/*
    public function createPinItemMain(CreatePinItemMainRequest $request): JsonResponse
    {
        $pinitemmain = app(CreatePinItemMainAction::class)->run($request);
        return $this->created($this->transform($pinitemmain, PinItemMainTransformer::class));
    }

    public function findPinItemMainById(FindPinItemMainByIdRequest $request): array
    {
        $pinitemmain = app(FindPinItemMainByIdAction::class)->run($request);
        return $this->transform($pinitemmain, PinItemMainTransformer::class);
    }


    public function updatePinItemMain(UpdatePinItemMainRequest $request): array
    {
        $pinitemmain = app(UpdatePinItemMainAction::class)->run($request);
        return $this->transform($pinitemmain, PinItemMainTransformer::class);
    }

    public function deletePinItemMain(DeletePinItemMainRequest $request): JsonResponse
    {
        app(DeletePinItemMainAction::class)->run($request);
        return $this->noContent();
    }
*/

}
