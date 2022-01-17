<?php

namespace App\Containers\PinSection\PinItemboard\Tasks;

use App\Containers\PinSection\PinItemboard\Data\Repositories\PinItemboardRepository;
use App\Ship\Exceptions\UpdateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdatePinItemboardTask extends Task
{
    protected PinItemboardRepository $repository;

    public function __construct(PinItemboardRepository $repository)
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
