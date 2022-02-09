<?php

namespace App\Containers\PinSection\PinType\UI\API\Controllers;

use App\Containers\PinSection\PinType\Data\Factories\PinTypePopoFactory;
use App\Containers\PinSection\PinType\Tasks\FindPinTypeByIdTask;
use App\Containers\PinSection\PinType\Tasks\GetAllPinTypesTask;
use App\Containers\PinSection\PinType\UI\API\Transformers\JsonApiPinTypeTransformer;
use App\Ship\Parents\Controllers\ApiController;

use League\Fractal\Manager;
use League\Fractal\Resource\Collection;
use League\Fractal\Serializer\JsonApiSerializer;
use function MongoDB\BSON\toJSON;

class Controller extends ApiController
{
    public function getAllOrdered()
    {
        $pinTypes = app(GetAllPinTypesTask::class)->run();

        $resource = new Collection($pinTypes, new JsonApiPinTypeTransformer(), 'pintypes');
        $data = $this->manager->createData($resource)->toJson();

        return response($data);
    }


    public function getById(int $id)
    {
        $pin = app(FindPinTypeByIdTask::class)->run($id);

        dd($pin);
    }
}
