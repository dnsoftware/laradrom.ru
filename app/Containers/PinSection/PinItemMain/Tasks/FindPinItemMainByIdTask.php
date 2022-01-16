<?php

namespace App\Containers\PinSection\PinItemMain\Tasks;

use App\Containers\PinSection\PinItemMain\Data\Repositories\PinItemMainRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindPinItemMainByIdTask extends Task
{
    protected PinItemMainRepository $repository;

    public function __construct(PinItemMainRepository $repository)
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
