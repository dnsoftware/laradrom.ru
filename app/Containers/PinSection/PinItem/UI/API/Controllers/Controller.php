<?php

namespace App\Containers\PinSection\PinItem\UI\API\Controllers;

use App\Containers\PinSection\PinItem\Actions\FindPinItemByIdAction;
use App\Containers\PinSection\PinItem\UI\API\Requests\FindPinItemByIdRequest;
use App\Containers\PinSection\PinItem\UI\API\Transformers\PinItemTransformer;
use App\Ship\Parents\Controllers\ApiController;

class Controller extends ApiController
{
    public function show(FindPinItemByIdRequest $request)
    {
        $pinitem = app(FindPinItemByIdAction::class)->run($request);

        return $this->transform($pinitem, PinItemTransformer::class);
    }

}
