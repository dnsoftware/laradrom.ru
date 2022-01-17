<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Containers\PinSection\PinItem\Data\Repositories\PinItemRepository;
use App\Ship\Parents\Tasks\Task;

class GetAllPinItemsTask extends Task
{
    protected PinItemRepository $repository;

    public function __construct(PinItemRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run()
    {
        return $this->repository->paginate();
    }
}
