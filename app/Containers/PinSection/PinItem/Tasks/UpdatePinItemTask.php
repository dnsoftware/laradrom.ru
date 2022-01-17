<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Containers\PinSection\PinItem\Data\Repositories\PinItemRepository;
use App\Ship\Exceptions\UpdateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdatePinItemTask extends Task
{
    protected PinItemRepository $repository;

    public function __construct(PinItemRepository $repository)
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
