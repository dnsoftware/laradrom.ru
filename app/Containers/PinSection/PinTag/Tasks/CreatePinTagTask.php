<?php

namespace App\Containers\PinSection\PinTag\Tasks;

use App\Containers\PinSection\PinTag\Data\Repositories\PinTagRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreatePinTagTask extends Task
{
    protected PinTagRepository $repository;

    public function __construct(PinTagRepository $repository)
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
