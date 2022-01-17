<?php

namespace App\Containers\PinSection\PinType\Actions;

use App\Containers\PinSection\PinItem\Data\DTO\FilteredPinsDto;
use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Containers\PinSection\PinType\Tasks\GetPintypeBySlugTask;
use App\Containers\PinSection\PinType\Tasks\GetPintypeIdBySlugTask;
use App\Containers\PinSection\StackItem\Tasks\GetStackitemBySlugTask;
use App\Containers\PinSection\StackItem\Tasks\GetStackitemIdBySlugTask;
use App\Containers\UserSection\User\Tasks\GetUserById;
use App\Ship\Parents\Actions\Action;

class GetFilteredPinsSubAction extends Action
{

    public function run(FilteredPinsDto $filterData)
    {
        $pintype = app(GetPintypeBySlugTask::class)->run($filterData->pinTypeSlug);
        $stackitem = app(GetStackitemBySlugTask::class)->run($filterData->stackItemSlug);


        // TODO проверять перепосты на неудаленность
        $pins_query = PinItem::select('pin_items.*')
                            ->join('pin_itemboards as ib', 'pin_items.id', '=', 'ib.pin_id')
                            ->whereNull('ib.deleted_at')
                            ->where('publication_status', 'a')
                            ->with(['itemboards' => function ($query) {
                                $query->orderBy('is_primary_board', 'desc');
                            }])
                            ->orderBy('created_at', 'desc')
                            ->distinct();

        if ($pintype) {
            $pins_query = $pins_query->where('pintype_id', $pintype->id);
        }

        if ($stackitem) {
            $pins_query = $pins_query->whereRelation('stackitems', 'stackitem_id', $stackitem->id);
        }

        if ($filterData->pinListUserId) {
            $pins_query = $pins_query->where('ib.board_user_id', $filterData->pinListUserId);
        }

        if ($filterData->pinListId) {
            $pins_query = $pins_query->where('ib.board_id', $filterData->pinListId);
        }



        return $pins_query->get();
    }


}
