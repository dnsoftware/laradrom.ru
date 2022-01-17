<?php

namespace App\Containers\PinSection\PinItemboard\Tasks;

use App\Containers\PinSection\PinItemboard\Data\Repositories\PinItemboardRepository;
use App\Ship\Parents\Tasks\Task;


/**
 * Получение кодов досок указанного юзера, на которых запинен указанный пин
 */
class GetUserPinBoardsTask extends Task
{
    protected PinItemboardRepository $repository;

    public function __construct(PinItemboardRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run(int $pin_id, int $user_id)
    {
        return $this->repository->findWhere([
            'pin_id' => $pin_id,
            'board_user_id' => $user_id
        ])->pluck('board_id')->toArray();
    }
}

