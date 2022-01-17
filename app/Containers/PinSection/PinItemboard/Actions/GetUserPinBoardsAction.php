<?php

namespace App\Containers\PinSection\PinItemboard\Actions;

use App\Containers\PinSection\PinItemboard\Tasks\GetUserPinBoardsTask;
use App\Ship\Parents\Actions\Action;

/**
 У пина конкретного юзера (оригинала или перепина) может быть только одна доска (пинлист)
 * */
class GetUserPinBoardsAction extends Action
{
    public function run(int $pin_id, int $user_id)
    {
        $user_boards_ids = app(GetUserPinBoardsTask::class)->run($pin_id, $user_id);

        return $user_boards_ids;

    }
}
