<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinItemboard\Models\PinItemboard;
use App\Ship\Parents\Tasks\Task;

class CheckPinPrimaryBoardBindingTask extends Task
{
    public function run(int $pinId, int $boardId)
    {
        if(PinItemboard::where('pin_id', $pinId )
            ->where('board_id', $boardId)
            ->where('is_primary_board', 1)
            ->first()) {

            return true;
        }

        return false;
    }
}
