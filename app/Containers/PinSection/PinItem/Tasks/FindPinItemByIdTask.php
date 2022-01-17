<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Containers\PinSection\PinItem\Data\Repositories\PinItemRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindPinItemByIdTask extends Task
{
    protected PinItemRepository $repository;

    public function __construct(PinItemRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id)
    {
        try {
            return $this->repository->with('stackItemsData')->with('pintype')->find($id);
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
