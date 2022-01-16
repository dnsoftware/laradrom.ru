<?php

namespace App\Containers\PinSection\PinItemMain\Tasks;

use App\Containers\PinSection\PinItemMain\Data\Repositories\PinItemMainRepository;
use App\Ship\Exceptions\DeleteResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class DeletePinItemMainTask extends Task
{
    protected PinItemMainRepository $repository;

    public function __construct(PinItemMainRepository $repository)
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
