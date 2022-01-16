<?php

namespace App\Containers\PinSection\PinItemMain\Tasks;

use App\Containers\PinSection\PinItemMain\Data\Repositories\PinItemMainRepository;
use App\Ship\Parents\Tasks\Task;

class GetAllPinItemMainsTask extends Task
{
    protected PinItemMainRepository $repository;

    public function __construct(PinItemMainRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run()
    {
        return $this->repository->paginate();
    }
}
