<?php

namespace App\Containers\ExampleSection\Example\Tasks;

use App\Containers\ExampleSection\Example\Data\Repositories\ExampleRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindExampleByIdTask extends Task
{
    protected ExampleRepository $repository;

    public function __construct(ExampleRepository $repository)
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
