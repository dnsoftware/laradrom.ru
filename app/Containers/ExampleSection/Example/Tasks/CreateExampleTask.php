<?php

namespace App\Containers\ExampleSection\Example\Tasks;

use App\Containers\ExampleSection\Example\Data\Repositories\ExampleRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreateExampleTask extends Task
{
    protected ExampleRepository $repository;

    public function __construct(ExampleRepository $repository)
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
