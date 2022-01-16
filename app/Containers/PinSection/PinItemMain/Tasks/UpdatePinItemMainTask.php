<?php

namespace App\Containers\PinSection\PinItemMain\Tasks;

use App\Containers\PinSection\PinItemMain\Data\Repositories\PinItemMainRepository;
use App\Ship\Exceptions\UpdateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdatePinItemMainTask extends Task
{
    protected PinItemMainRepository $repository;

    public function __construct(PinItemMainRepository $repository)
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
