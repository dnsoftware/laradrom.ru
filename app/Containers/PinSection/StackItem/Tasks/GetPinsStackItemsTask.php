<?php

namespace App\Containers\PinSection\StackItem\Tasks;

use App\Containers\PinSection\StackItem\Models\PinitemStackitem;
use App\Ship\Parents\Tasks\Task;
use Illuminate\Support\Collection;

class GetPinsStackItemsTask extends Task
{
    public function run(Collection $pin_items)
    {
        $pins_stacks = PinitemStackitem::whereIn('pinitem_id', $pin_items->pluck('id'))->get();
        $pins_stack_items = $pins_stacks->mapToGroups(function ($item, $key) {
            return [$item['pinitem_id'] => $item];
        })->toArray();

        return $pins_stack_items;

    }

}
