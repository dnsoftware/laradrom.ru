<?php

namespace App\Containers\PinSection\StackItem\UI\WEB\Controllers;

use App\Containers\PinSection\StackItem\UI\WEB\Requests\CreateStackItemRequest;
use App\Containers\PinSection\StackItem\UI\WEB\Requests\DeleteStackItemRequest;
use App\Containers\PinSection\StackItem\UI\WEB\Requests\GetAllStackItemsRequest;
use App\Containers\PinSection\StackItem\UI\WEB\Requests\FindStackItemByIdRequest;
use App\Containers\PinSection\StackItem\UI\WEB\Requests\UpdateStackItemRequest;
use App\Containers\PinSection\StackItem\UI\WEB\Requests\StoreStackItemRequest;
use App\Containers\PinSection\StackItem\UI\WEB\Requests\EditStackItemRequest;
use App\Containers\PinSection\StackItem\Actions\CreateStackItemAction;
use App\Containers\PinSection\StackItem\Actions\FindStackItemByIdAction;
use App\Containers\PinSection\StackItem\Actions\GetAllStackItemsAction;
use App\Containers\PinSection\StackItem\Actions\UpdateStackItemAction;
use App\Containers\PinSection\StackItem\Actions\DeleteStackItemAction;
use App\Ship\Parents\Controllers\WebController;

class Controller extends WebController
{
    public function index(GetAllStackItemsRequest $request)
    {
        $stackitems = app(GetAllStackItemsAction::class)->run($request);
        // ..
    }

    public function show(FindStackItemByIdRequest $request)
    {
        $stackitem = app(FindStackItemByIdAction::class)->run($request);
        // ..
    }

    public function create(CreateStackItemRequest $request)
    {
        // ..
    }

    public function store(StoreStackItemRequest $request)
    {
        $stackitem = app(CreateStackItemAction::class)->run($request);
        // ..
    }

    public function edit(EditStackItemRequest $request)
    {
        $stackitem = app(FindStackItemByIdAction::class)->run($request);
        // ..
    }

    public function update(UpdateStackItemRequest $request)
    {
        $stackitem = app(UpdateStackItemAction::class)->run($request);
        // ..
    }

    public function destroy(DeleteStackItemRequest $request)
    {
         $result = app(DeleteStackItemAction::class)->run($request);
         // ..
    }
}
