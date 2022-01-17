<?php

namespace App\Containers\PinSection\PinItem\Actions;

use App\Containers\PinSection\PinBoard\Tasks\GetUserBoardsTask;
use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Containers\PinSection\PinType\Tasks\GetAllPinTypesTask;
use App\Containers\PinSection\StackItem\Tasks\GetAllStackItemsTask;
use App\Ship\Parents\Actions\Action;
use Illuminate\Support\Facades\Auth;

class AddPinItemAction extends Action
{
    public function run()
    {
        $user = Auth::user();
        $boards = app(GetUserBoardsTask::class)->run($user->id);
        $pin_types = app(GetAllPinTypesTask::class)->addRequestCriteria()->run();
        $stack_items = app(GetAllStackItemsTask::class)->run();
        $pinitem_api_route_part = app(MakePinitemApiRoutePartAction::class)->run();
        $publication_statuses = PinItem::PUBLICATION_STATUSES;

        return compact('boards', 'stack_items', 'pin_types', 'pinitem_api_route_part',
            'publication_statuses');
    }
}
