<?php

namespace App\Containers\PinSection\PinBoard\UI\WEB\Controllers;

use App\Containers\PinSection\PinBoard\UI\WEB\Requests\CreatePinBoardRequest;
use App\Containers\PinSection\PinBoard\UI\WEB\Requests\DeletePinBoardRequest;
use App\Containers\PinSection\PinBoard\UI\WEB\Requests\GetAllPinBoardsRequest;
use App\Containers\PinSection\PinBoard\UI\WEB\Requests\FindPinBoardByIdRequest;
use App\Containers\PinSection\PinBoard\UI\WEB\Requests\UpdatePinBoardRequest;
use App\Containers\PinSection\PinBoard\UI\WEB\Requests\StorePinBoardRequest;
use App\Containers\PinSection\PinBoard\UI\WEB\Requests\EditPinBoardRequest;
use App\Containers\PinSection\PinBoard\Actions\CreatePinBoardAction;
use App\Containers\PinSection\PinBoard\Actions\FindPinBoardByIdAction;
use App\Containers\PinSection\PinBoard\Actions\GetAllPinBoardsAction;
use App\Containers\PinSection\PinBoard\Actions\UpdatePinBoardAction;
use App\Containers\PinSection\PinBoard\Actions\DeletePinBoardAction;
use App\Ship\Parents\Controllers\WebController;

class Controller extends WebController
{
    public function index(GetAllPinBoardsRequest $request)
    {
        $pinboards = app(GetAllPinBoardsAction::class)->run($request);
        // ..
    }

    public function show(FindPinBoardByIdRequest $request)
    {
        $pinboard = app(FindPinBoardByIdAction::class)->run($request);
        // ..
    }

    public function create(CreatePinBoardRequest $request)
    {
        // ..
    }

    public function store(StorePinBoardRequest $request)
    {
        $pinboard = app(CreatePinBoardAction::class)->run($request);
        // ..
    }

    public function edit(EditPinBoardRequest $request)
    {
        $pinboard = app(FindPinBoardByIdAction::class)->run($request);
        // ..
    }

    public function update(UpdatePinBoardRequest $request)
    {
        $pinboard = app(UpdatePinBoardAction::class)->run($request);
        // ..
    }

    public function destroy(DeletePinBoardRequest $request)
    {
         $result = app(DeletePinBoardAction::class)->run($request);
         // ..
    }
}
