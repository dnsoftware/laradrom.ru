<?php

namespace App\Containers\PinSection\StackItem\Tasks;

use App\Containers\PinSection\StackItem\Data\Repositories\StackItemRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreateStackItemTask extends Task
{
    protected StackItemRepository $repository;

    public function __construct(StackItemRepository $repository)
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
