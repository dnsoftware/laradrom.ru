<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Ship\Parents\Tasks\Task;

class GetBoardListByPinItemboardsTask extends Task
{

    public function run($pin_itemboards)
    {

        $board_ids = collect($pin_itemboards)->pluck('board_id')->toArray();

        $board_list = PinBoard::whereIn('id', $board_ids)->get()->keyBy('id');
        $board_list->transform(function ($item, $key) {
            $item['slug'] = \Str::of($item->name)->slug('_');
            return $item;
        });

        return $board_list;
    }
}
