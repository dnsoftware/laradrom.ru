<?php

namespace App\Containers\PinSection\PinTag\Tasks;

use App\Containers\PinSection\PinTag\Data\Repositories\PinTagRepository;
use App\Ship\Parents\Tasks\Task;

class GetAllPinTagsTask extends Task
{
    protected PinTagRepository $repository;

    public function __construct(PinTagRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run()
    {
        return $this->repository->paginate();
    }
}
