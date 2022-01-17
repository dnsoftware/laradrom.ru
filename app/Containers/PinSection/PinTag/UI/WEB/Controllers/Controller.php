<?php

namespace App\Containers\PinSection\PinTag\UI\WEB\Controllers;

use App\Containers\PinSection\PinTag\UI\WEB\Requests\CreatePinTagRequest;
use App\Containers\PinSection\PinTag\UI\WEB\Requests\DeletePinTagRequest;
use App\Containers\PinSection\PinTag\UI\WEB\Requests\GetAllPinTagsRequest;
use App\Containers\PinSection\PinTag\UI\WEB\Requests\FindPinTagByIdRequest;
use App\Containers\PinSection\PinTag\UI\WEB\Requests\UpdatePinTagRequest;
use App\Containers\PinSection\PinTag\UI\WEB\Requests\StorePinTagRequest;
use App\Containers\PinSection\PinTag\UI\WEB\Requests\EditPinTagRequest;
use App\Containers\PinSection\PinTag\Actions\CreatePinTagAction;
use App\Containers\PinSection\PinTag\Actions\FindPinTagByIdAction;
use App\Containers\PinSection\PinTag\Actions\GetAllPinTagsAction;
use App\Containers\PinSection\PinTag\Actions\UpdatePinTagAction;
use App\Containers\PinSection\PinTag\Actions\DeletePinTagAction;
use App\Ship\Parents\Controllers\WebController;

class Controller extends WebController
{
    public function index(GetAllPinTagsRequest $request)
    {
        $pintags = app(GetAllPinTagsAction::class)->run($request);
        // ..
    }

    public function show(FindPinTagByIdRequest $request)
    {
        $pintag = app(FindPinTagByIdAction::class)->run($request);
        // ..
    }

    public function create(CreatePinTagRequest $request)
    {
        // ..
    }

    public function store(StorePinTagRequest $request)
    {
        $pintag = app(CreatePinTagAction::class)->run($request);
        // ..
    }

    public function edit(EditPinTagRequest $request)
    {
        $pintag = app(FindPinTagByIdAction::class)->run($request);
        // ..
    }

    public function update(UpdatePinTagRequest $request)
    {
        $pintag = app(UpdatePinTagAction::class)->run($request);
        // ..
    }

    public function destroy(DeletePinTagRequest $request)
    {
         $result = app(DeletePinTagAction::class)->run($request);
         // ..
    }
}
