<?php

namespace App\Containers\PinSection\PinItemMain\Tasks;

use App\Containers\PinSection\PinItemMain\Data\Repositories\PinItemMainRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreatePinItemMainTask extends Task
{
    protected PinItemMainRepository $repository;

    public function __construct(PinItemMainRepository $repository)
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
