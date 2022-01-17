<?php

namespace App\Containers\PinSection\PinTag\Tasks;

use App\Containers\PinSection\PinTag\Data\Repositories\PinTagRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindPinTagByIdTask extends Task
{
    protected PinTagRepository $repository;

    public function __construct(PinTagRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id)
    {
        try {
            return $this->repository->find($id);
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
