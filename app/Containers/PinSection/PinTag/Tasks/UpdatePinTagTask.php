<?php

namespace App\Containers\PinSection\PinTag\Tasks;

use App\Containers\PinSection\PinTag\Data\Repositories\PinTagRepository;
use App\Ship\Exceptions\UpdateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdatePinTagTask extends Task
{
    protected PinTagRepository $repository;

    public function __construct(PinTagRepository $repository)
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
