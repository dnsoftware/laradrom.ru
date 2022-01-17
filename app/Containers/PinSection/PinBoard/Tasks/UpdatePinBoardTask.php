<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinBoard\Data\Repositories\PinBoardRepository;
use App\Ship\Exceptions\UpdateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdatePinBoardTask extends Task
{
    protected PinBoardRepository $repository;

    public function __construct(PinBoardRepository $repository)
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
