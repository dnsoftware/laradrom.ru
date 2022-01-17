<?php

namespace App\Containers\PinSection\PinType\Tasks;

use App\Containers\PinSection\PinType\Data\Repositories\PinTypeRepository;
use App\Ship\Parents\Tasks\Task;

class GetAllPinTypesTask extends Task
{
    protected PinTypeRepository $repository;

    public function __construct(PinTypeRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run()
    {
        return $this->repository->orderBy('order_num', 'asc')->paginate()->keyBy('id');
    }
}
