<?php

namespace App\Containers\PinSection\PinItemboard\UI\WEB\Controllers;

use App\Containers\PinSection\PinItemboard\UI\WEB\Requests\CreatePinItemboardRequest;
use App\Containers\PinSection\PinItemboard\UI\WEB\Requests\DeletePinItemboardRequest;
use App\Containers\PinSection\PinItemboard\UI\WEB\Requests\GetAllPinItemboardsRequest;
use App\Containers\PinSection\PinItemboard\UI\WEB\Requests\FindPinItemboardByIdRequest;
use App\Containers\PinSection\PinItemboard\UI\WEB\Requests\UpdatePinItemboardRequest;
use App\Containers\PinSection\PinItemboard\UI\WEB\Requests\StorePinItemboardRequest;
use App\Containers\PinSection\PinItemboard\UI\WEB\Requests\EditPinItemboardRequest;
use App\Containers\PinSection\PinItemboard\Actions\CreatePinItemboardAction;
use App\Containers\PinSection\PinItemboard\Actions\FindPinItemboardByIdAction;
use App\Containers\PinSection\PinItemboard\Actions\GetAllPinItemboardsAction;
use App\Containers\PinSection\PinItemboard\Actions\UpdatePinItemboardAction;
use App\Containers\PinSection\PinItemboard\Actions\DeletePinItemboardAction;
use App\Ship\Parents\Controllers\WebController;

class Controller extends WebController
{
    public function index(GetAllPinItemboardsRequest $request)
    {
        $pinitemboards = app(GetAllPinItemboardsAction::class)->run($request);
        // ..
    }

    public function show(FindPinItemboardByIdRequest $request)
    {
        $pinitemboard = app(FindPinItemboardByIdAction::class)->run($request);
        // ..
    }

    public function create(CreatePinItemboardRequest $request)
    {
        // ..
    }

    public function store(StorePinItemboardRequest $request)
    {
        $pinitemboard = app(CreatePinItemboardAction::class)->run($request);
        // ..
    }

    public function edit(EditPinItemboardRequest $request)
    {
        $pinitemboard = app(FindPinItemboardByIdAction::class)->run($request);
        // ..
    }

    public function update(UpdatePinItemboardRequest $request)
    {
        $pinitemboard = app(UpdatePinItemboardAction::class)->run($request);
        // ..
    }

    public function destroy(DeletePinItemboardRequest $request)
    {
         $result = app(DeletePinItemboardAction::class)->run($request);
         // ..
    }
}
