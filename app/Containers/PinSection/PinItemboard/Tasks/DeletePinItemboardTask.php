<?php

namespace App\Containers\PinSection\PinItemboard\Tasks;

use App\Containers\PinSection\PinItemboard\Data\Repositories\PinItemboardRepository;
use App\Ship\Exceptions\DeleteResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class DeletePinItemboardTask extends Task
{
    protected PinItemboardRepository $repository;

    public function __construct(PinItemboardRepository $repository)
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
