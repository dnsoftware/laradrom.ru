<?php

namespace App\Containers\PinSection\PinItem\Actions;

use App\Containers\PinSection\PinBoard\Tasks\GetPrimaryBoardTask;
use App\Containers\PinSection\PinBoard\Tasks\GetUserBoardsTask;
use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Containers\PinSection\PinItem\Tasks\GetUserPinOrStopTask;
use App\Containers\PinSection\PinType\Tasks\GetAllPinTypesTask;
use App\Containers\PinSection\StackItem\Actions\GetPinitemStackIdsAction;
use App\Containers\PinSection\StackItem\Tasks\GetAllStackItemsTask;
use App\Services\TagService;
use App\Ship\Parents\Actions\Action;
use Illuminate\Support\Facades\Auth;

class EditPinItemAction extends Action
{
    public function run($pinId)
    {
        $user = Auth::user();

        $pin = app(GetUserPinOrStopTask::class)->run($pinId, $user->id);

        $boards = app(GetUserBoardsTask::class)->run($user->id);

        $primary_board = app(GetPrimaryBoardTask::class)->run($pin->id);

        $tag_list = TagService::getPinTagString($pin->id);

        $pin_types = app(GetAllPinTypesTask::class)->run();

        $stack_items = app(GetAllStackItemsTask::class)->run();

        $pin_stack_items_ids = app(GetPinitemStackIdsAction::class)->run($pin->id);

        $publication_statuses = PinItem::PUBLICATION_STATUSES;

        return compact(
            'pin', 'boards', 'primary_board', 'tag_list',
            'stack_items', 'pin_stack_items_ids', 'pin_types', 'publication_statuses'
        );
    }
}
