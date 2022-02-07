<?php

namespace App\Containers\PinSection\PinType\UI\API\Controllers;

use App\Containers\PinSection\PinType\Data\Factories\PinTypePopoFactory;
use App\Containers\PinSection\PinType\Tasks\FindPinTypeByIdTask;
use App\Containers\PinSection\PinType\Tasks\GetAllPinTypesTask;
use App\Ship\Parents\Controllers\ApiController;
use function MongoDB\BSON\toJSON;

class Controller extends ApiController
{
    public function getAllOrdered()
    {
        $pins = app(GetAllPinTypesTask::class)->run();

        return response()->json($pins);
    }


    public function getById(int $id)
    {
        $pin = app(FindPinTypeByIdTask::class)->run($id);

        dd($pin);
    }
}
