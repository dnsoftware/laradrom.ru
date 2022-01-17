<?php

namespace App\Containers\PinSection\PinType\Tasks;

use App\Containers\PinSection\PinType\Data\Repositories\PinTypeRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindPinTypeByIdTask extends Task
{
    protected PinTypeRepository $repository;

    public function __construct(PinTypeRepository $repository)
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
