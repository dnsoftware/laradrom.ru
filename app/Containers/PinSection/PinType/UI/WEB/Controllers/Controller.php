<?php

namespace App\Containers\PinSection\PinType\UI\WEB\Controllers;

use App\Containers\PinSection\PinType\UI\WEB\Requests\CreatePinTypeRequest;
use App\Containers\PinSection\PinType\UI\WEB\Requests\DeletePinTypeRequest;
use App\Containers\PinSection\PinType\UI\WEB\Requests\GetAllPinTypesRequest;
use App\Containers\PinSection\PinType\UI\WEB\Requests\FindPinTypeByIdRequest;
use App\Containers\PinSection\PinType\UI\WEB\Requests\UpdatePinTypeRequest;
use App\Containers\PinSection\PinType\UI\WEB\Requests\StorePinTypeRequest;
use App\Containers\PinSection\PinType\UI\WEB\Requests\EditPinTypeRequest;
use App\Containers\PinSection\PinType\Actions\CreatePinTypeAction;
use App\Containers\PinSection\PinType\Actions\FindPinTypeByIdAction;
use App\Containers\PinSection\PinType\Actions\GetAllPinTypesAction;
use App\Containers\PinSection\PinType\Actions\UpdatePinTypeAction;
use App\Containers\PinSection\PinType\Actions\DeletePinTypeAction;
use App\Ship\Parents\Controllers\WebController;

class Controller extends WebController
{
    public function index(GetAllPinTypesRequest $request)
    {
        $pintypes = app(GetAllPinTypesAction::class)->run($request);
        // ..
    }

    public function show(FindPinTypeByIdRequest $request)
    {
        $pintype = app(FindPinTypeByIdAction::class)->run($request);
        // ..
    }

    public function create(CreatePinTypeRequest $request)
    {
        // ..
    }

    public function store(StorePinTypeRequest $request)
    {
        $pintype = app(CreatePinTypeAction::class)->run($request);
        // ..
    }

    public function edit(EditPinTypeRequest $request)
    {
        $pintype = app(FindPinTypeByIdAction::class)->run($request);
        // ..
    }

    public function update(UpdatePinTypeRequest $request)
    {
        $pintype = app(UpdatePinTypeAction::class)->run($request);
        // ..
    }

    public function destroy(DeletePinTypeRequest $request)
    {
         $result = app(DeletePinTypeAction::class)->run($request);
         // ..
    }
}
