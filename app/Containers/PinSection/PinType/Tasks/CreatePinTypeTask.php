<?php

namespace App\Containers\PinSection\PinType\Tasks;

use App\Containers\PinSection\PinType\Data\Repositories\PinTypeRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreatePinTypeTask extends Task
{
    protected PinTypeRepository $repository;

    public function __construct(PinTypeRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run(array $data)
    {
        try {
            return $this->repository->create($data);
        }
        catch (Exception $exception) {
            throw new CreateResourceFailedException();
        }
    }
}
