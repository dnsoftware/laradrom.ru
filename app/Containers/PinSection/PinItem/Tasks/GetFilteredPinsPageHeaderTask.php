<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Containers\PinSection\PinItem\Data\DTO\FilteredPinsDto;
use App\Containers\PinSection\PinType\Models\PinType;
use App\Containers\PinSection\StackItem\Models\StackItem;
use App\Containers\UserSection\User\Tasks\GetUserById;
use App\Models\User;
use App\Ship\Parents\Tasks\Task;

class GetFilteredPinsPageHeaderTask extends Task
{
    private string $pageHeader = '';

    public function run(FilteredPinsDto $filterData)
    {
        $pintype = PinType::where('slug', $filterData->pinTypeSlug)->first();
        $stackitem = StackItem::where('slug', $filterData->stackItemSlug)->first();

        if ($pintype && !$stackitem) {
            $this->pageHeader = $pintype->name;
        }
        if (!$pintype && $stackitem) {
            $this->pageHeader = $stackitem->name . ' (' . $stackitem->hint . ')';
        }
        if ($pintype && $stackitem) {
            $this->pageHeader = $pintype->name . ' ' . $stackitem->name . ' (' . $stackitem->hint . ')';
        }

        if ($filterData->pinListUserId) {
            $pinListUser = User::find($filterData->pinListUserId);
            $this->pageHeader = $pinListUser->name;
        }

        if ($filterData->pinListId) {
            $pinList = PinBoard::find($filterData->pinListId);
            $this->pageHeader = $pinList->name;
        }

        return $this->pageHeader;
    }
}
