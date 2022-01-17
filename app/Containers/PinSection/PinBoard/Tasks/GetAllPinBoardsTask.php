<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinBoard\Data\Repositories\PinBoardRepository;
use App\Ship\Parents\Tasks\Task;

class GetAllPinBoardsTask extends Task
{
    protected PinBoardRepository $repository;

    public function __construct(PinBoardRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run()
    {
        return $this->repository->paginate();
    }
}
