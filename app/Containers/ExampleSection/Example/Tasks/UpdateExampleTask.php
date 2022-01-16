<?php

namespace App\Containers\ExampleSection\Example\Tasks;

use App\Containers\ExampleSection\Example\Data\Repositories\ExampleRepository;
use App\Ship\Exceptions\UpdateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdateExampleTask extends Task
{
    protected ExampleRepository $repository;

    public function __construct(ExampleRepository $repository)
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
