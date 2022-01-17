<?php

namespace App\Containers\PinSection\PinItemboard\Tasks;

use App\Containers\PinSection\PinItemboard\Data\Repositories\PinItemboardRepository;
use App\Ship\Parents\Tasks\Task;

class GetAllPinItemboardsTask extends Task
{
    protected PinItemboardRepository $repository;

    public function __construct(PinItemboardRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run()
    {
        return $this->repository->paginate();
    }
}
