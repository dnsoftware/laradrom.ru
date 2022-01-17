<?php

namespace App\Containers\PinSection\StackItem\Actions;

use App\Containers\PinSection\StackItem\Models\PinitemStackitem;
use App\Ship\Parents\Actions\Action;

class RecreatePinitemStackitemRelationsAction extends Action
{
    public function run(int $pinitem_id, array $stackitems_ids)
    {
        PinitemStackitem::where('pinitem_id', $pinitem_id)
                        ->delete();

        foreach ($stackitems_ids as $key => $stackitem_id) {
            PinitemStackitem::create([
                'pinitem_id' => $pinitem_id,
                'stackitem_id' => $stackitem_id
            ]);
        }

        // $var = app(Task::class)->run($arg1, $arg2);
    }
}
