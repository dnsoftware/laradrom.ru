<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinBoard\Data\Repositories\PinBoardRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreatePinBoardTask extends Task
{
    protected PinBoardRepository $repository;

    public function __construct(PinBoardRepository $repository)
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
