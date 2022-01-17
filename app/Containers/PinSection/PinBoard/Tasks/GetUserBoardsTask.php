<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Ship\Parents\Tasks\Task;

class GetUserBoardsTask extends Task
{

    public function run(int $user_id, string $orderby = 'name')
    {
        $boards = PinBoard::where('user_id', $user_id)
            ->orderBy($orderby)
            ->get()
            ->keyBy('id');
        return $boards;
    }
}
