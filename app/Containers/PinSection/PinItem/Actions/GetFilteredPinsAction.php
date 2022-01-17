<?php

namespace App\Containers\PinSection\PinItem\Actions;

use App\Containers\PinSection\PinBoard\Tasks\GetBoardListByPinItemboardsTask;
use App\Containers\PinSection\PinBoard\Tasks\GetPinBoardsUsersByItemboardsTask;
use App\Containers\PinSection\PinBoard\Tasks\GetUserBoardsCatalogTask;
use App\Containers\PinSection\PinItem\Data\DTO\FilteredPinsDto;
use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Containers\PinSection\PinItem\Tasks\GetFilteredPinsPageHeaderTask;
use App\Containers\PinSection\PinItem\Tasks\GetPinlistItemboardsTask;
use App\Containers\PinSection\PinItem\Tasks\MakePinitemApiRoutePartTask;
use App\Containers\PinSection\PinType\Actions\GetFilteredPinsSubAction;
use App\Containers\PinSection\PinType\Tasks\GetAllPinTypesTask;
use App\Containers\PinSection\PinType\Tasks\GetPintypeIdBySlugTask;
use App\Containers\PinSection\StackItem\Tasks\GetAllStackItemsTask;
use App\Containers\PinSection\StackItem\Tasks\GetPinsStackItemsTask;
use App\Containers\PinSection\StackItem\Tasks\GetStackitemIdBySlugTask;
use App\Containers\UserSection\User\Tasks\GetUserById;
use App\Ship\Parents\Actions\Action;

/**
 * Список пинов на главной странице
 */
class GetFilteredPinsAction extends Action
{

    public function run(FilteredPinsDto $filterData)
    {
        $pins = app(GetFilteredPinsSubAction::class)->run($filterData);
        $pinsData = app(GetFilteredPinsDataSubAction::class)->run($pins);
        $catalog = app(GetUserBoardsCatalogTask::class)->run();

        $pageHeader = app(GetFilteredPinsPageHeaderTask::class)->run($filterData);


        return array_merge([
            'catalog' => $catalog,
            'pins' => $pins,
            'pageHeader' => $pageHeader,

            'pinsData' => $pinsData
            ],
        );
    }
}
