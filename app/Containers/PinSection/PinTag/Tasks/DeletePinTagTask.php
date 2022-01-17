<?php

namespace App\Containers\PinSection\PinTag\Tasks;

use App\Containers\PinSection\PinTag\Data\Repositories\PinTagRepository;
use App\Ship\Exceptions\DeleteResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class DeletePinTagTask extends Task
{
    protected PinTagRepository $repository;

    public function __construct(PinTagRepository $repository)
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
