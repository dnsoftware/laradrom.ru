<?php

namespace App\Containers\ExampleSection\Example\Tasks;

use App\Containers\ExampleSection\Example\Data\Repositories\ExampleRepository;
use App\Ship\Exceptions\DeleteResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class DeleteExampleTask extends Task
{
    protected ExampleRepository $repository;

    public function __construct(ExampleRepository $repository)
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
