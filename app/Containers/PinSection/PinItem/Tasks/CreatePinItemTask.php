<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Containers\PinSection\PinItem\Data\Repositories\PinItemRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreatePinItemTask extends Task
{
    protected PinItemRepository $repository;

    public function __construct(PinItemRepository $repository)
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
