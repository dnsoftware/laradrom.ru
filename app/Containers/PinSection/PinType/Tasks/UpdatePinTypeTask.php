<?php

namespace App\Containers\PinSection\PinType\Tasks;

use App\Containers\PinSection\PinType\Data\Repositories\PinTypeRepository;
use App\Ship\Exceptions\UpdateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdatePinTypeTask extends Task
{
    protected PinTypeRepository $repository;

    public function __construct(PinTypeRepository $repository)
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
