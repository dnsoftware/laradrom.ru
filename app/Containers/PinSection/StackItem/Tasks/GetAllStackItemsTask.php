<?php

namespace App\Containers\PinSection\StackItem\Tasks;

use App\Containers\PinSection\StackItem\Data\Repositories\StackItemRepository;
use App\Ship\Parents\Tasks\Task;

class GetAllStackItemsTask extends Task
{
    protected StackItemRepository $repository;

    public function __construct(StackItemRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run()
    {
        return $this->repository->orderBy('order_num', 'asc')->get()->keyBy('id');
    }
}
