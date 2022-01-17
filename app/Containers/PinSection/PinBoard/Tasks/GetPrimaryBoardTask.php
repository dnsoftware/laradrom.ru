<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinItemboard\Models\PinItemboard;
use App\Ship\Parents\Tasks\Task;

class GetPrimaryBoardTask extends Task
{
    public function run(int $pinId)
    {
        $board = PinItemboard::where('pin_id', $pinId)
            ->where('is_primary_board', 1)
            ->first();

        return $board;
    }
}
