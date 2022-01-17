<?php

namespace App\Containers\PinSection\StackItem\Tasks;

use App\Containers\PinSection\StackItem\Data\Repositories\StackItemRepository;
use App\Ship\Exceptions\DeleteResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class DeleteStackItemTask extends Task
{
    protected StackItemRepository $repository;

    public function __construct(StackItemRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id): ?int
    {
        try {
            return $this->repository->delete($id);
        }
        catch (Exception $exception) {
            throw new DeleteResourceFailedException();
        }
    }
}
