<?php

namespace App\Containers\PinSection\PinItemMain\UI\WEB\Controllers;

use App\Containers\PinSection\PinItemMain\UI\WEB\Requests\CreatePinItemMainRequest;
use App\Containers\PinSection\PinItemMain\UI\WEB\Requests\DeletePinItemMainRequest;
use App\Containers\PinSection\PinItemMain\UI\WEB\Requests\GetAllPinItemMainsRequest;
use App\Containers\PinSection\PinItemMain\UI\WEB\Requests\FindPinItemMainByIdRequest;
use App\Containers\PinSection\PinItemMain\UI\WEB\Requests\UpdatePinItemMainRequest;
use App\Containers\PinSection\PinItemMain\UI\WEB\Requests\StorePinItemMainRequest;
use App\Containers\PinSection\PinItemMain\UI\WEB\Requests\EditPinItemMainRequest;
use App\Containers\PinSection\PinItemMain\Actions\CreatePinItemMainAction;
use App\Containers\PinSection\PinItemMain\Actions\FindPinItemMainByIdAction;
use App\Containers\PinSection\PinItemMain\Actions\GetAllPinItemMainsAction;
use App\Containers\PinSection\PinItemMain\Actions\UpdatePinItemMainAction;
use App\Containers\PinSection\PinItemMain\Actions\DeletePinItemMainAction;
use App\Ship\Parents\Controllers\WebController;

class Controller extends WebController
{
    /*
    public function index(GetAllPinItemMainsRequest $request)
    {
        $pinitemmains = app(GetAllPinItemMainsAction::class)->run($request);
        // ..
    }

    public function show(FindPinItemMainByIdRequest $request)
    {
        $pinitemmain = app(FindPinItemMainByIdAction::class)->run($request);
        // ..
    }

    public function create(CreatePinItemMainRequest $request)
    {
        // ..
    }

    public function store(StorePinItemMainRequest $request)
    {
        $pinitemmain = app(CreatePinItemMainAction::class)->run($request);
        // ..
    }

    public function edit(EditPinItemMainRequest $request)
    {
        $pinitemmain = app(FindPinItemMainByIdAction::class)->run($request);
        // ..
    }

    public function update(UpdatePinItemMainRequest $request)
    {
        $pinitemmain = app(UpdatePinItemMainAction::class)->run($request);
        // ..
    }

    public function destroy(DeletePinItemMainRequest $request)
    {
         $result = app(DeletePinItemMainAction::class)->run($request);
         // ..
    }
    */
}
