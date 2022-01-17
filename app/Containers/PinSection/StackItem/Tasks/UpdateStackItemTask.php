<?php

namespace App\Containers\PinSection\StackItem\Tasks;

use App\Containers\PinSection\StackItem\Data\Repositories\StackItemRepository;
use App\Ship\Exceptions\UpdateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdateStackItemTask extends Task
{
    protected StackItemRepository $repository;

    public function __construct(StackItemRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id, array $data)
    {
        try {
            return $this->repository->update($data, $id);
        }
        catch (Exception $exception) {
            throw new UpdateResourceFailedException();
        }
    }
}
