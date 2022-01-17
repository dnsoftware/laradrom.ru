<?php

namespace App\Containers\PinSection\PinItem\Actions;

use App\Containers\PinSection\PinBoard\Tasks\GetBoardListByPinItemboardsTask;
use App\Containers\PinSection\PinBoard\Tasks\GetPinBoardsUsersByItemboardsTask;
use App\Containers\PinSection\PinItem\Tasks\GetPinlistItemboardsTask;
use App\Containers\PinSection\PinItem\Tasks\MakePinitemApiRoutePartTask;
use App\Containers\PinSection\PinType\Tasks\GetAllPinTypesTask;
use App\Containers\PinSection\StackItem\Tasks\GetAllStackItemsTask;
use App\Containers\PinSection\StackItem\Tasks\GetPinsStackItemsTask;
use App\Ship\Parents\Actions\Action;
use Illuminate\Support\Collection;

class GetFilteredPinsDataSubAction extends Action
{
    public function run(Collection $pins)
    {
        $pinsStacks = app(GetPinsStackItemsTask::class)->run($pins);
        $pinTypes = app(GetAllPinTypesTask::class)->run();;
        $stackItems = app(GetAllStackItemsTask::class)->run();
        $pinitemApiRoutePart = app(MakePinitemApiRoutePartTask::class)->run();


        // TODO доделать поиск релевантного вторичного...
        $pinItemboards = app(GetPinlistItemboardsTask::class)->run($pins);
        $pinUserboards = app(GetPinBoardsUsersByItemboardsTask::class)->run($pinItemboards);
        $boardList = app(GetBoardListByPinItemboardsTask::class)->run($pinItemboards);

        // TODO разработать правильный алгоритм поиска вторичных релевантных досок для пинов
        // TODO проверять перепосты на неудаленность

        return compact(
            'pinsStacks',
            'pinTypes',
            'stackItems',
            'pinitemApiRoutePart',
            'pinItemboards',
            'pinUserboards',
            'boardList',
        );

        /*
        return [
            'pins_stacks' => $pins_stacks,
            'pin_types' => $pin_types,
            'stack_items' => $stack_items,
            'pinitem_api_route_part' => $pinitem_api_route_part,

            'pin_itemboards' => $pin_itemboards,
            'pin_userboards' => $pin_userboards,
            'board_list' => $board_list,
        ];
        */
    }
}
