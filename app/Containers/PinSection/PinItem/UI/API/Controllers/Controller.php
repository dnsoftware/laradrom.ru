<?php

namespace App\Containers\PinSection\PinItem\UI\API\Controllers;

use App\Containers\PinSection\PinItem\Actions\FindPinItemByIdAction;
use App\Containers\PinSection\PinItem\UI\API\Requests\CreatePinItemRequest;
use App\Containers\PinSection\PinItem\UI\API\Requests\FindPinItemByIdRequest;
use App\Containers\PinSection\PinItem\UI\API\Transformers\PinItemTransformer;
use App\Ship\Parents\Controllers\ApiController;
use App\Ship\Parents\Requests\Request;

class Controller extends ApiController
{
    public function show(FindPinItemByIdRequest $request)
    {
        $pinitem = app(FindPinItemByIdAction::class)->run($request);
dd($pinitem);
        $result = $this->transform($pinitem, PinItemTransformer::class);
        dd($result);
        return $result;
    }

    public function create(CreatePinItemRequest $request)
    {
        return response()->json([
            'resp' => 'Создаем ПИН'
        ]);
    }

}
