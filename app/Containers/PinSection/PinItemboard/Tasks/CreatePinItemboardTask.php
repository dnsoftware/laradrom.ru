<?php

namespace App\Containers\PinSection\PinItemboard\Tasks;

use App\Containers\PinSection\PinItemboard\Data\Repositories\PinItemboardRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreatePinItemboardTask extends Task
{
    protected PinItemboardRepository $repository;

    public function __construct(PinItemboardRepository $repository)
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
