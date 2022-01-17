<?php

namespace App\Containers\PinSection\PinItem\Actions;

use App\Containers\AppSection\Common\Tasks\PageMetaDescriptionGenerateSimpleTask;
use App\Containers\AppSection\Common\Tasks\PageMetaTitleGenerateSimpleTask;
use App\Containers\PinSection\PinBoard\Tasks\GetUserBoardsCatalogTask;
use App\Containers\PinSection\PinItem\Data\DTO\FilteredPinsDto;
use App\Containers\PinSection\PinItem\Tasks\GetFilteredPinsPageHeaderTask;
use App\Containers\PinSection\PinItem\Tasks\PinItemPageMetaDescriptionGenerateTask;
use App\Containers\PinSection\PinItem\Tasks\PinItemPageMetaTitleGenerateTask;
use App\Containers\PinSection\PinType\Actions\GetFilteredPinsSubAction;
use App\Ship\Parents\Actions\Action;

/**
 * По типам и стеку
 */
class GetFilteredPinsByPinTypesAction extends Action
{

    public function run(FilteredPinsDto $filterData)
    {
        $pins = app(GetFilteredPinsSubAction::class)->run($filterData);
        $pinsData = app(GetFilteredPinsDataSubAction::class)->run($pins);
        $catalog = app(GetUserBoardsCatalogTask::class)->run();

        $pageHeader = app(GetFilteredPinsPageHeaderTask::class)->run($filterData);

        app(PageMetaTitleGenerateSimpleTask::class)->run($pageHeader);
        app(PageMetaDescriptionGenerateSimpleTask::class)->run($pageHeader);

        return array_merge([
            'catalog' => $catalog,
            'pins' => $pins,
            'pageHeader' => $pageHeader,

            'pinsData' => $pinsData
            ],
        );
    }

}
