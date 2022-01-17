<?php

namespace App\Containers\PinSection\StackItem\Actions;

use App\Containers\PinSection\StackItem\Models\PinitemStackitem;
use App\Ship\Parents\Actions\Action;

class GetPinitemStackIdsAction extends Action
{
    public function run(int $pinitem_id)
    {
        return PinitemStackitem::select('stackitem_id')
                        ->where('pinitem_id', $pinitem_id)
                        ->get()
                        ->pluck('stackitem_id', 'stackitem_id')
                        ->toArray();

        // $var = app(Task::class)->run($arg1, $arg2);
    }
}
