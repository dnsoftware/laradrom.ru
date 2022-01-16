<?php

namespace App\Containers\ExampleSection\Example\Tasks;

use App\Containers\ExampleSection\Example\Data\Repositories\ExampleRepository;
use App\Ship\Parents\Tasks\Task;

class GetAllExamplesTask extends Task
{
    protected ExampleRepository $repository;

    public function __construct(ExampleRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run()
    {
        return $this->repository->paginate();
    }
}
